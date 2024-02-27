package com.springlec.base.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.springlec.base.dao.AdminDao;
import com.springlec.base.model.AdminDto;

public interface AdminGenderDaoService {
	 public List<AdminDto> AdminGender() throws Exception;
	 public List<AdminDto> managerDay() throws Exception;
	 public List<AdminDto> managerMonth() throws Exception;
	 public List<AdminDto> managerYear() throws Exception;
	 public List<AdminDto> listDao() throws Exception;
	 public List<AdminDto> listQuery(String query, String content) throws Exception;
	 public List<AdminDto> listQueryForBirthday(String birthday);
	 public List<AdminDto> listQueryForActive(String active);
	 public List<AdminDto> listQueryForDeactive(String deactive);
	 public List<AdminDto> product() throws Exception;
	 public List<AdminDto> productper() throws Exception;
	 public List<AdminDto> listDao2() throws Exception;
	 public List<AdminDto> listQuery2(String query, String content) throws Exception;
	 public List<AdminDto> listQueryForproDate(String proDate);
	 public List<AdminDto> totalDay() throws Exception;
	 public List<AdminDto> totalMonth() throws Exception;
	 public List<AdminDto> totalYear() throws Exception;
	 public List<AdminDto> listDao3() throws Exception;
	 public List<AdminDto> listQuery3(String query, String content) throws Exception;
	 public List<AdminDto> listQueryForpDate(String proDate);
	 public List<AdminDto> totalgender();
	 public void insertDao(String proCategory, String proName, String proGender, String proIntroduction, String proColor, int proQty, int proPrice,String proImage1,String proImage2,String proImage3) throws Exception;
	 public String uploadfile(MultipartFile file) throws Exception;	
	 public List<AdminDto> listDao4() throws Exception;
	 public List<AdminDto> listQuery4(String query, String content) throws Exception;
	 public List<AdminDto> listQueryForproDate1(String proDate);
	 public AdminDto selectDao(int proSeq) throws Exception;
	 public void updateDao(AdminDto adminDto) throws Exception;
	 public void updateDao1(AdminDto adminDto) throws Exception;
	 public void updateDao2(AdminDto adminDto) throws Exception;
	 public void updateDao3(AdminDto adminDto) throws Exception;
	 public void updateDao4(AdminDto adminDto) throws Exception;
	 public void updateDao5(AdminDto adminDto) throws Exception;
	 public void updateDao6(AdminDto adminDto) throws Exception;
	 public void updateDao7(AdminDto adminDto) throws Exception;
	 public List<AdminDto> allinone() throws Exception;
	 public AdminDto detail(String proName) throws Exception;



}
