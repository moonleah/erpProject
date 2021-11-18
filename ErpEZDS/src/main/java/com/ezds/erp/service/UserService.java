package com.ezds.erp.service;

import com.ezds.erp.vo.UserVO;

public interface UserService {
	public UserVO getUser(UserVO userVO) throws Exception;

	public void insertUser(UserVO userVO) throws Exception;

	
}
