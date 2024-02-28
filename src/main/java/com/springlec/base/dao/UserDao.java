package com.springlec.base.dao;

import com.springlec.base.model.UserDto;

public interface UserDao {

	public UserDto whologin(String userId, String userPasswd) throws Exception;
	public void changePasswd(String userPasswd, String userId) throws Exception;
	public void sign(String userId, String userPw, String name, String postcode, String address, String phone, String email, String gender, String birthday, String howToLogin) throws Exception;
	public UserDto findId(String name, String email) throws Exception;
	public UserDto findPw(String userId, String name, String email) throws Exception;
	
	public Integer checkDuplicatedId(String userId) throws Exception;
	public Integer checkDuplicatedEmail(String email) throws Exception;
	
	
}
