package com.springlec.base.dao;

import com.springlec.base.model.UserDto;

public interface UserDao {

	public UserDto whologin(String userId, String userPasswd) throws Exception;
	public UserDto findId(String name, String email) throws Exception;
	public UserDto findPw(String userId, String name, String email) throws Exception;
}
