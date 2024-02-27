package com.springlec.base.service;

import com.springlec.base.model.UserDto;

public interface UserDaoService {

	public UserDto whologin(String userId, String userPasswd) throws Exception;
	public UserDto findId(String name, String email) throws Exception;
	public UserDto findPw(String userId, String name, String email) throws Exception;
}
