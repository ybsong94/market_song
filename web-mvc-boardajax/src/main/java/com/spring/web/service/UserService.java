package com.spring.web.service;

import com.spring.web.vo.UserVO;

public interface UserService {
	//USER_GET
	UserVO getUser(UserVO vo);
	
	//USER_INSERT
	void insertUser(UserVO vo);
	
	//USER_DELETE
	void deleteUser(UserVO vo);
	
	//USER_UPDATE
	void updateUser(UserVO vo);
}
