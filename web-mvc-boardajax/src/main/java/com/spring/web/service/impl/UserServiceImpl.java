package com.spring.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.web.dao.UserDAOMybatis;
import com.spring.web.service.UserService;
import com.spring.web.vo.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAOMybatis userDAO;

	public void setUserDAO(UserDAOMybatis userDAO) {
		this.userDAO = userDAO;
	}
	
	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	
	@Override
	public void insertUser(UserVO vo) {
		userDAO.insertUser(vo);
	}

	@Override
	public void deleteUser(UserVO vo) {
		userDAO.deleteUser(vo);
	}

	@Override
	public void updateUser(UserVO vo) {
		userDAO.updateUser(vo);
	}
}
