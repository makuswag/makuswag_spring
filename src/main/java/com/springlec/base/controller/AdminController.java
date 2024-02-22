package com.springlec.base.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springlec.base.model.AdminDto;

import com.springlec.base.service.AdminGenderDaoService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
    
    @Autowired
    AdminGenderDaoService service;
    
    @GetMapping("chart")
    public String list(Model model) {
        try {
            List<AdminDto> adminGenderList = service.AdminGender();
            int maleCount = 0;
            int femaleCount = 0;
            for (AdminDto adminGender : adminGenderList) {
                if ("남".equals(adminGender.getGender())) {
                    maleCount += adminGender.getMaleCount(); // 기존 값에 더해줍니다.
                } else if ("여".equals(adminGender.getGender())) {
                    femaleCount += adminGender.getFemaleCount(); // 기존 값에 더해줍니다.
                }
            }
            double total = maleCount + femaleCount;
            double malePercentage = (maleCount / total) * 100;
            double femalePercentage = (femaleCount / total) * 100;
            
            System.out.println(total);
            System.out.println(malePercentage);
            System.out.println(femalePercentage);

            // Model에 데이터를 담습니다.
            model.addAttribute("malePercentage", malePercentage);
            model.addAttribute("femalePercentage", femalePercentage);

            // View 이름을 반환합니다.
            return "admin/Gender";
        } catch (Exception e) {
            e.printStackTrace();
            // 예외 발생 시 에러 페이지로 리다이렉트합니다.
            return "error";
        }
    }

    
    @GetMapping("day")
    public String day() {
    	return "admin/Manager";
    }
    @GetMapping("Managerday")
    public String getManagerDay(Model model) {
        try {
            List<AdminDto> managerDayList = service.managerDay();
            model.addAttribute("managerDayList", managerDayList);
            return "admin/Managerday"; // 반환할 view의 이름
        } catch (Exception e) {
            e.printStackTrace();
            return "error"; // 에러 발생 시 에러 페이지로 리다이렉트
        }
    }
    @GetMapping("ManagerMonth")
    public String getManagerMonth(Model model) {
    	try {
            List<AdminDto> managerDayList = service.managerMonth();
            model.addAttribute("managerDayList", managerDayList);
            return "admin/ManagerMonth"; // 반환할 view의 이름
        } catch (Exception e) {
            e.printStackTrace();
            return "error"; // 에러 발생 시 에러 페이지로 리다이렉트
        }
    }
    
    @GetMapping("ManagerYear")
    public String getManagerYear(Model model) {
    	try {
            List<AdminDto> managerDayList = service.managerYear();
            model.addAttribute("managerDayList", managerDayList);
            return "admin/ManagerYear"; // 반환할 view의 이름
        } catch (Exception e) {
            e.printStackTrace();
            return "error"; // 에러 발생 시 에러 페이지로 리다이렉트
        }
    }
    @GetMapping("table")
    public String gettable(Model model) throws Exception {
    	List<AdminDto> listDao = service.listDao();
    	model.addAttribute("list",listDao);
    	return "admin/UserTable";
    	
    }
    @PostMapping("listQuery")
    public String listQuery(HttpServletRequest request, Model model) throws Exception {
        
        String query = request.getParameter("query");
        System.out.println(query);
        String content = request.getParameter("content");
        System.out.println(content);
        List<AdminDto> listDao;

        // 생년월일인 경우에는 listQueryForBirthday 메서드를 호출
        if ("birthday".equals(query)) {
            // listQueryForBirthday 메서드 호출
            listDao = service.listQueryForBirthday(content);
            System.out.println(listDao);
        } else if ("active".equals(query)) {
            // 가입일인 경우에는 listQueryForActive 메서드를 호출
            listDao = service.listQueryForActive(content);
            System.out.println(listDao);
        } else if ("deactive".equals(query)) {
            // 탈퇴일인 경우에는 listQueryForDeactive 메서드를 호출
            listDao = service.listQueryForDeactive(content);
            System.out.println(listDao);
        } else {
            // 나머지 경우에는 기본적인 listQuery 메서드를 호출
            listDao = service.listQuery(query, content);
            System.out.println(listDao);
        }

        model.addAttribute("list", listDao);
        return "admin/UserTable";
    }
    
}
