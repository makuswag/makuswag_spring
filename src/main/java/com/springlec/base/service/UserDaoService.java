package com.springlec.base.service;

import com.springlec.base.model.UserDto;

public interface UserDaoService {

	public UserDto whologin(String userId, String userPasswd) throws Exception;
}
