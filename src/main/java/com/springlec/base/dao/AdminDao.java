package com.springlec.base.dao;

import java.sql.Date;
import java.util.List;

import com.springlec.base.model.AdminDto;

public interface AdminDao {
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
	

}
