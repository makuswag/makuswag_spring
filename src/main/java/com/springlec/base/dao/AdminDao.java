package com.springlec.base.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

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
	public List<String> color(String proName) throws Exception;
	public void writeDao(String noTitle, String noCategory, String noContent, String noImage, String userId) throws Exception;
	public String uploadfile1(MultipartFile file) throws Exception;
	public AdminDto contentDao(int qnaSeq, String qnaTitle, String qnaContent, String qnaImage, String qnaDate,String qnaCategory) throws Exception;
	public AdminDto contentDao1(int noSeq, String noTitle, String noContent, String noImage, String noDate) throws Exception; 
	public void deleteDao(int noSeq) throws Exception;
	public void deleteQna(int qnaSeq) throws Exception;
	public void modify_no(AdminDto adminDto) throws Exception;
	public void modify_no1(AdminDto adminDto) throws Exception;
	public void modify_qna(AdminDto adminDto) throws Exception;
	public void modify_qna1(AdminDto adminDto) throws Exception;
	public AdminDto modifyselect(int noSeq) throws Exception;
	public AdminDto modifyselect1(int qnaSeq) throws Exception;
	public void writeDao1(String qnaTitle, String qnaCategory, String qnaContent, String qnaImage, String userId) throws Exception;
	public String uploadfile2(MultipartFile file) throws Exception;
	public List<AdminDto> qnaQueryadmin(String query, String content) throws Exception;
	public void parents(AdminDto adminDto) throws Exception;
	public void writeanswer(AdminDto adminDto) throws Exception;
	public void writeanswer1(AdminDto adminDto) throws Exception;
	public int count(int qnaSeq) throws Exception;

}
