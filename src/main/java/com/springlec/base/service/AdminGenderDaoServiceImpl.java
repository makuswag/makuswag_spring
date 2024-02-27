package com.springlec.base.service;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.springlec.base.dao.AdminDao;
import com.springlec.base.model.AdminDto;

@Service
public class AdminGenderDaoServiceImpl implements AdminGenderDaoService {

	
	@Autowired
	AdminDao dao;
	
	@Override
	public List<AdminDto> AdminGender() throws Exception{
		// TODO Auto-generated method stub
		return dao.AdminGender();
	}

	@Override
	public List<AdminDto> managerDay() throws Exception {
		// TODO Auto-generated method stub
		return dao.managerDay();
	}

	@Override
	public List<AdminDto> managerMonth() throws Exception {
		// TODO Auto-generated method stub
		return dao.managerMonth();
	}

	@Override
	public List<AdminDto> managerYear() throws Exception {
		// TODO Auto-generated method stub
		return dao.managerYear();
	}

	@Override
	public List<AdminDto> listDao() throws Exception {
		// TODO Auto-generated method stub
		return dao.listDao();
	}

	@Override
	public List<AdminDto> listQuery(String query, String content) throws Exception {
		// TODO Auto-generated method stub
		content='%'+content+'%';
		return dao.listQuery(query, content);
	}

	@Override
	public List<AdminDto> listQueryForBirthday(String birthday) {
		// TODO Auto-generated method stub
		return dao.listQueryForBirthday(birthday);
	}

	@Override
	public List<AdminDto> listQueryForActive(String active) {
		// TODO Auto-generated method stub
		return dao.listQueryForActive(active);
	}

	@Override
	public List<AdminDto> listQueryForDeactive(String deactive) {
		// TODO Auto-generated method stub
		return dao.listQueryForDeactive(deactive);
	}

	@Override
	public List<AdminDto> product() throws Exception {
		// TODO Auto-generated method stub
		return dao.product();
	}

	@Override
	public List<AdminDto> productper() throws Exception {
		// TODO Auto-generated method stub
		return dao.productper();
	}

	@Override
	public List<AdminDto> listDao2() throws Exception {
		// TODO Auto-generated method stub
		return dao.listDao2();
	}

	@Override
	public List<AdminDto> listQuery2(String query, String content) throws Exception {
		// TODO Auto-generated method stub
		content='%'+content+'%';
		return dao.listQuery2(query, content);
	}

	@Override
	public List<AdminDto> listQueryForproDate(String proDate) {
		// TODO Auto-generated method stub
		return dao.listQueryForproDate(proDate);
	}

	@Override
	public List<AdminDto> totalDay() throws Exception {
		// TODO Auto-generated method stub
		return dao.totalDay();
	}

	@Override
	public List<AdminDto> totalMonth() throws Exception {
		// TODO Auto-generated method stub
		return dao.totalMonth();
	}

	@Override
	public List<AdminDto> totalYear() throws Exception {
		// TODO Auto-generated method stub
		return dao.totalYear();
	}

	@Override
	public List<AdminDto> listDao3() throws Exception {
		// TODO Auto-generated method stub
		return dao.listDao3();
	}

	@Override
	public List<AdminDto> listQuery3(String query, String content) throws Exception {
		// TODO Auto-generated method stub
		content='%'+content+'%';
		return dao.listQuery3(query, content);
	}

	@Override
	public List<AdminDto> listQueryForpDate(String proDate) {
		// TODO Auto-generated method stub
		return dao.listQueryForpDate(proDate);
	}

	@Override
	public List<AdminDto> totalgender() {
		// TODO Auto-generated method stub
		return dao.totalgender();
	}

	@Override
	public void insertDao(String proCategory, String proName, String proGender, String proIntroduction, String proColor, int proQty, int proPrice,String proImage1,String proImage2,String proImage3) throws Exception {
		// TODO Auto-generated method stub
		dao.insertDao(proCategory, proName, proGender, proIntroduction, proColor, proQty, proPrice, proImage1,proImage2,proImage3);
		
	}

	@Override
	public String uploadfile(MultipartFile file) throws Exception {
		// TODO Auto-generated method stub
		String proImage1 = file.getOriginalFilename();
		UUID uuid =UUID.randomUUID();
		proImage1 = uuid+proImage1;
		
		if(proImage1 != null) {
			try {
				
				String path = System.getProperty("user.dir")+"/src/main/resources/static/images/admin";
				file.transferTo(new File(path + "/"+proImage1));
			}catch(IOException e) {
				e.printStackTrace();
			}
		}
		return proImage1;
	}

	@Override
	public List<AdminDto> listDao4() throws Exception {
		// TODO Auto-generated method stub
		return dao.listDao4();
	}

	@Override
	public List<AdminDto> listQuery4(String query, String content) throws Exception {
		// TODO Auto-generated method stub
		content='%'+content+'%';
		return dao.listQuery4(query, content);
	}

	@Override
	public List<AdminDto> listQueryForproDate1(String proDate) {
		// TODO Auto-generated method stub
		return dao.listQueryForproDate1(proDate);
	}

	@Override
	public AdminDto selectDao(int proSeq) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectDao(proSeq);
	}

	@Override
	public void updateDao(AdminDto adminDto) throws Exception {
		// TODO Auto-generated method stub
		dao.updateDao(adminDto);
	}

	@Override
	public void updateDao1(AdminDto adminDto) throws Exception {
		// TODO Auto-generated method stub
		dao.updateDao1(adminDto);
	}

	@Override
	public void updateDao2(AdminDto adminDto) throws Exception {
		// TODO Auto-generated method stub
		dao.updateDao2(adminDto);
	}

	@Override
	public void updateDao3(AdminDto adminDto) throws Exception {
		// TODO Auto-generated method stub
		dao.updateDao3(adminDto);
	}

	@Override
	public void updateDao4(AdminDto adminDto) throws Exception {
		// TODO Auto-generated method stub
		dao.updateDao4(adminDto);
	}

	@Override
	public void updateDao5(AdminDto adminDto) throws Exception {
		// TODO Auto-generated method stub
		dao.updateDao5(adminDto);
		
	}

	@Override
	public void updateDao6(AdminDto adminDto) throws Exception {
		// TODO Auto-generated method stub
		dao.updateDao6(adminDto);
	}

	@Override
	public void updateDao7(AdminDto adminDto) throws Exception {
		// TODO Auto-generated method stub
		dao.updateDao7(adminDto);
	}

	@Override
	public List<AdminDto> allinone() throws Exception {
		// TODO Auto-generated method stub
		return dao.allinone();
	}

	@Override
	public AdminDto detail(String proName) throws Exception {
		// TODO Auto-generated method stub
		return dao.detail(proName);
	}







}
