package com.spring.web.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.web.vo.UserVO;


@Repository
public class UserDAOMybatis extends SqlSessionDaoSupport{
	
	private SqlSession mybatis = null;
	
	@Override
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
		mybatis = getSqlSession();
	}
	
	
	public UserVO getUser(UserVO vo) {
		System.out.println("mybatisgetUser()");
		
		UserVO svo = (UserVO)mybatis.selectOne("UserDAO.getUser",vo);
		System.out.println(svo+"UserDAOMybatis");
		return svo;
	}
	
	public void insertUser(UserVO vo) {
		System.out.println("mybatis - insertUser()");

		mybatis.insert("UserDAO.insertUser", vo);
		System.out.println(vo+"UserDAOMybatis");
	}
	
	public void deleteUser(UserVO vo) {
		System.out.println("mybatis - deleteuser()");

		mybatis.delete("UserDAO.deleteUser", vo);
	}
	
	public void updateUser(UserVO vo) {
		System.out.println("mybatis - updateUser()");

		mybatis.update("UserDAO.updateUser", vo);
	}
}
