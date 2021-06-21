package com.spring.web.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.web.vo.CartVO;

@Repository
public class CartDAOMybatis extends SqlSessionDaoSupport{

	private SqlSession mybatis = null;

	@Override
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
		mybatis = getSqlSession();
	}

	public void insertCart(CartVO vo) {
		System.out.println("mybatis - insertCart()");

		mybatis.insert("CartDAO.insertCart", vo);
	}

	public void updateCart(CartVO vo) {
		System.out.println("mybatis - updateCart()");

		mybatis.update("CartDAO.updateCart", vo);
	}

	public void deleteCart(CartVO vo) {
		System.out.println("mybatis - deleteCart()");

		mybatis.delete("CartDAO.deleteCart", vo);
	}

	public CartVO getCart(CartVO vo) {
		System.out.println("mybatis - getCart()");

		return (CartVO) mybatis.selectOne("CartDAO.getCart", vo);
	}
	
	public List<CartVO> getCartList(CartVO vo) {
		System.out.println("mybatis - getCartList()");
		List<CartVO> cart = mybatis.selectList("CartDAO.getCartList", vo);
		System.out.println(cart);
		return cart;
	}
	
}
