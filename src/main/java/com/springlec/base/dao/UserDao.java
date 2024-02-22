package com.springlec.base.dao;

import com.springlec.base.model.UserDto;

public interface UserDao {

	public UserDto whologin(String userId, String userPasswd) throws Exception;
}
