package com.springlec.base.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.springlec.base.model.AdminDto;
import com.springlec.base.service.AdminGenderDaoService;

import ch.qos.logback.core.Context;
import jakarta.servlet.ServletContext;
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
    
    @GetMapping("product")
    public String showChart(Model model) {
    	try {
            List<AdminDto> productList = service.product();
            model.addAttribute("productList", productList);
            return "admin/ProductBar"; // 반환할 view의 이름
        } catch (Exception e) {
            e.printStackTrace();
            return "error"; // 에러 발생 시 에러 페이지로 리다이렉트
        }
    }
    @GetMapping("productper")
    public String productchart(Model model) {
        try {
            List<AdminDto> productperList = service.productper();
            model.addAttribute("productperList",productperList);
            System.out.println(service.productper());
            return "admin/ProductPer";
        }catch (Exception e) {
        	e.printStackTrace();
        }return "error";
    
    	
    }
    @GetMapping("table2")
    public String table2(Model model) throws Exception {
    	List<AdminDto> listDao2 = service.listDao2();
    	model.addAttribute("list",listDao2);
    	return "admin/ProTable";
    	
    }
    @PostMapping("listQuery2")
    public String listQuery2(HttpServletRequest request, Model model) throws Exception {
        
        String query = request.getParameter("query");
        System.out.println(query);
        String content = request.getParameter("content");
        System.out.println(content);
        List<AdminDto> listDao;

        // 생년월일인 경우에는 listQueryForBirthday 메서드를 호출
        if ("proDate".equals(query)) {
            // listQueryForBirthday 메서드 호출
            listDao = service.listQueryForproDate(content);
            System.out.println(listDao);
        } else {
            // 나머지 경우에는 기본적인 listQuery 메서드를 호출
            listDao = service.listQuery2(query, content);
            System.out.println(listDao);
        }

        model.addAttribute("list", listDao);
        return "admin/ProTable";
    }

    @GetMapping("productmanager")
    public String a() {
    	return "admin/ProductManager";
    }
    
    @GetMapping("manager1")
    public String b() {
    	return "admin/UserManageAdmin";
    }
    
    @GetMapping("totalday")
    public String gettotalDay(Model model) {
        try {
            List<AdminDto> totalDayList = service.totalDay();
            model.addAttribute("totalDayList", totalDayList);
            return "admin/TotalDay"; // 반환할 view의 이름
        } catch (Exception e) {
            e.printStackTrace();
            return "error"; // 에러 발생 시 에러 페이지로 리다이렉트
        }
    }
    @GetMapping("totalmonth")
    public String gettotalMonth(Model model) {
        try {
            List<AdminDto> totalMonthList = service.totalMonth();
            model.addAttribute("totalMonthList", totalMonthList);
            return "admin/TotalMonth"; // 반환할 view의 이름
        } catch (Exception e) {
            e.printStackTrace();
            return "error"; // 에러 발생 시 에러 페이지로 리다이렉트
        }
    }
    @GetMapping("totalyear")
    public String gettotalYear(Model model) {
        try {
            List<AdminDto> totalYearList = service.totalYear();
            model.addAttribute("totalYearList", totalYearList);
            return "admin/TotalYear"; // 반환할 view의 이름
        } catch (Exception e) {
            e.printStackTrace();
            return "error"; // 에러 발생 시 에러 페이지로 리다이렉트
        }
    }
    @GetMapping("a")
    public String total() {
    	return "admin/Total";
    }
    @GetMapping("totalmanager")
    public String totalmanager() {
    	return "admin/TotalAdmin";
    }
    
    @GetMapping("table3")
    public String table3(Model model) throws Exception {
    	List<AdminDto> listDao3 = service.listDao3();
    	model.addAttribute("list",listDao3);
    	return "admin/TotalTable";
    	
    }
    @PostMapping("listQuery3")
    public String listQuery3(HttpServletRequest request, Model model) throws Exception {
        
        String query = request.getParameter("query");
        System.out.println(query);
        String content = request.getParameter("content");
        System.out.println(content);
        List<AdminDto> listDao;

        // 생년월일인 경우에는 listQueryForBirthday 메서드를 호출
        if ("pDate".equals(query)) {
            // listQueryForBirthday 메서드 호출
            listDao = service.listQueryForpDate(content);
            System.out.println(listDao);
        } else {
            // 나머지 경우에는 기본적인 listQuery 메서드를 호출
            listDao = service.listQuery3(query, content);
            System.out.println(listDao);
        }

        model.addAttribute("list", listDao);
        return "admin/TotalTable";
    }
    @GetMapping("totalgender")
    public String totalchart(Model model) {
        try {
            List<AdminDto> totalgenderList = service.totalgender();
            model.addAttribute("totalgenderList",totalgenderList);
            System.out.println(service.totalgender());
            return "admin/TotalGender";
        }catch (Exception e) {
        	e.printStackTrace();
        }return "error";
    
    	
    }
    
    

    @PostMapping("insert")
    public String insertProduct(HttpServletRequest request, 
                                @RequestParam("proImage1") MultipartFile proImage4, 
                                @RequestParam("proImage2") MultipartFile proImage5, 
                                @RequestParam("proImage3") MultipartFile proImage6) throws Exception {
        
        // 파일을 저장할 디렉토리 경로 설정
    	String proPrice = request.getParameter("proPrice").replace(",", "");
        
        String proImage1 = null;
        if(proImage4!=null && !proImage4.isEmpty()) proImage1= service.uploadfile(proImage4);
        String proImage2 = null;
        if(proImage5!=null && !proImage5.isEmpty()) proImage2= service.uploadfile(proImage5);
        String proImage3 = null;
        if(proImage6!=null && !proImage6.isEmpty()) proImage3= service.uploadfile(proImage6);
        
        // 각 이미지 파일의 원본 이름 추출

        

        // insertDao 메서드에 이미지 파일 이름을 전달
        service.insertDao(request.getParameter("proCategory"),
                          request.getParameter("proName"),
                          request.getParameter("proGender"), 
                          request.getParameter("proIntroduction"), 
                          request.getParameter("proColor"), 
                          Integer.parseInt(request.getParameter("proQty")), 
                          Integer.parseInt(proPrice),
                          proImage1,
                          proImage2,
                          proImage3);

        return "redirect:productinsert";
    }
    // 파일을 저장하는 메서드

    // 이미지를 저장하는 메서드

    @GetMapping("productinsert")
    public String d() {
    	return "admin/ProductInsertAdmin";
    }
    
    @GetMapping("table4")
    public String table4(Model model) throws Exception {
    	List<AdminDto> listDao4 = service.listDao4();
    	model.addAttribute("list",listDao4);
    	return "admin/proUpdate";
    	
    }
    @PostMapping("listQuery4")
    public String listQuery4(HttpServletRequest request, Model model) throws Exception {
        
        String query = request.getParameter("query");
        System.out.println(query);
        String content = request.getParameter("content");
        System.out.println(content);
        List<AdminDto> listDao;

        // 생년월일인 경우에는 listQueryForBirthday 메서드를 호출
        if ("proDate".equals(query)) {
            // listQueryForBirthday 메서드 호출
            listDao = service.listQueryForproDate1(content);
            System.out.println(listDao);
        } else {
            // 나머지 경우에는 기본적인 listQuery 메서드를 호출
            listDao = service.listQuery4(query, content);
            System.out.println(listDao);
        }

        model.addAttribute("list", listDao);
        return "admin/ProductUpdateAdmin";
    }
    @GetMapping("content_view")
    public String content(HttpServletRequest request, @RequestParam("proSeq") int proSeq, Model model) throws Exception {
        AdminDto content_view = service.selectDao(proSeq); // proSeq에 해당하는 상품 정보를 가져옴
        model.addAttribute("content_view", content_view); // 모델에 상품 정보를 추가

        // 추가된 부분: 상품 목록을 가져와 모델에 추가
        List<AdminDto> listDao4 = service.listDao4();
        model.addAttribute("list", listDao4);

        return "admin/ProductUpdateAdmin"; // content_view 페이지로 이동
    }
	
	@GetMapping("productupdate")
	public String u(Model model) throws Exception {
		 List<AdminDto> listDao4 = service.listDao4();
	     model.addAttribute("list", listDao4);
		return "admin/ProductUpdateAdmin";

	}
	@PostMapping("modify")
	public String modifyProduct(HttpServletRequest request, 
	                            @RequestParam("proImage1") MultipartFile proImage4, 
	                            @RequestParam("proImage2") MultipartFile proImage5, 
	                            @RequestParam("proImage3") MultipartFile proImage6) throws Exception { 
	   
		String proPrice = request.getParameter("proPrice").replace(",", "");
	    // 변경된 내용을 AdminDto 객체에 설정
	    AdminDto adminDto = new AdminDto();
	    adminDto.setProCategory(request.getParameter("proCategory"));
	    adminDto.setProName(request.getParameter("proName"));
	    adminDto.setProGender(request.getParameter("proGender"));
	    adminDto.setProIntroduction(request.getParameter("proIntroduction"));
	    adminDto.setProColor(request.getParameter("proColor"));
	    adminDto.setProPrice(Integer.parseInt(proPrice));
	    adminDto.setProQty(Integer.parseInt(request.getParameter("proQty")));
	    adminDto.setProSeq(Integer.parseInt(request.getParameter("proSeq")));
	    
	    // 변경된 이미지가 있는 경우 해당 이미지를 서버에 업로드하고 AdminDto 객체에 추가
	    //전부 있는경우
	    if (!proImage4.isEmpty() && !proImage5.isEmpty() && !proImage6.isEmpty()) {
	        String proImage1 = service.uploadfile(proImage4);
	        String proImage2 = service.uploadfile(proImage5);
	        String proImage3 = service.uploadfile(proImage6);
	        adminDto.setProImage1(proImage1);
	        adminDto.setProImage2(proImage2);
	        adminDto.setProImage3(proImage3);
	        service.updateDao(adminDto);
	    }
	    // proImage4와 proImage5가 비어 있지 않은 경우
	    else if (!proImage4.isEmpty() && !proImage5.isEmpty() && proImage6.isEmpty()) {
	        String proImage1 = service.uploadfile(proImage4);
	        String proImage2 = service.uploadfile(proImage5);
	        adminDto.setProImage1(proImage1);
	        adminDto.setProImage2(proImage2);
	        service.updateDao4(adminDto);
	    }
	    // proImage4와 proImage6가 비어 있지 않은 경우
	    else if (!proImage4.isEmpty() && proImage5.isEmpty() && !proImage6.isEmpty()) {
	        String proImage1 = service.uploadfile(proImage4);
	        String proImage3 = service.uploadfile(proImage6);
	        adminDto.setProImage1(proImage1);
	        adminDto.setProImage3(proImage3);
	        service.updateDao5(adminDto);
	    }
	    // proImage5와 proImage6가 비어 있지 않은 경우
	    else if (proImage4.isEmpty() && !proImage5.isEmpty() && !proImage6.isEmpty()) {
	        String proImage2 = service.uploadfile(proImage5);
	        String proImage3 = service.uploadfile(proImage6);
	        adminDto.setProImage2(proImage2);
	        adminDto.setProImage3(proImage3);
	        service.updateDao6(adminDto);
	    }
	    // proImage4만 비어 있지 않은 경우
	    else if (!proImage4.isEmpty() && proImage5.isEmpty() && proImage6.isEmpty()) {
	        String proImage1 = service.uploadfile(proImage4);
	        adminDto.setProImage1(proImage1);
	        service.updateDao1(adminDto);
	    }
	    // proImage5만 비어 있지 않은 경우
	    else if (proImage4.isEmpty() && !proImage5.isEmpty() && proImage6.isEmpty()) {
	        String proImage2 = service.uploadfile(proImage5);
	        adminDto.setProImage2(proImage2);
	        service.updateDao2(adminDto);
	    }
	    // proImage6만 비어 있지 않은 경우
	    else if (proImage4.isEmpty() && proImage5.isEmpty() && !proImage6.isEmpty()) {
	        String proImage3 = service.uploadfile(proImage6);
	        adminDto.setProImage3(proImage3);
	        service.updateDao3(adminDto);
	    }else {
	    	service.updateDao7(adminDto);
	    	
	    }
	    
	    
	    return "redirect:productupdate";
	
    
	
	}
	@GetMapping("allinone")
    public String all(Model model, HttpServletRequest request) {
        try {
            List<AdminDto> allinone = service.allinone();

            int productsPerPage = 9;
            int totalProducts = allinone.size();
            int totalPages = (int) Math.ceil((double) totalProducts / productsPerPage);
            int currentPage = 1;
            String pageParam = request.getParameter("page");

            if (pageParam != null && !pageParam.isEmpty()) {
                currentPage = Integer.parseInt(pageParam);
            }

            int startIndex = (currentPage - 1) * productsPerPage;
            int endIndex = Math.min(startIndex + productsPerPage, totalProducts);

            List<AdminDto> listPerPage = allinone.subList(startIndex, endIndex);

            model.addAttribute("totalPages", totalPages);
            model.addAttribute("currentPage", currentPage);
            model.addAttribute("productsPerPage", productsPerPage);
            model.addAttribute("listPerPage", listPerPage);

            // 버튼 스타일을 생성하여 모델에 추가
            String buttonStyle = "background-color: white; border: 1px solid black; padding: 5px 10px; margin: 0 5px;";
            model.addAttribute("buttonStyle", buttonStyle);

            return "category/all_in_one";
        } catch (Exception e) {
            e.printStackTrace();
            return "error"; // 예외 발생 시 에러 페이지로 이동
        }
    }
		@GetMapping("allinone_detail")
		public String detail(HttpServletRequest request, @RequestParam("proName") String proName, Model model) throws Exception{
			AdminDto allinone_detail = service.detail(proName); // bId에 해당하는 게시물 정보를 가져옴
			model.addAttribute("allinone_detail", allinone_detail); // 모델에 게시물 정보를 추가
			return "category/allinone_detail"; // content_view 페이지로 이동
	}
}