package com.springlec.base.service;

import java.sql.Date;
import java.util.List;

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



}
