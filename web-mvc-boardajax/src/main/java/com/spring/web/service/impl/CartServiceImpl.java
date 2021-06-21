package com.spring.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.web.dao.CartDAOMybatis;
import com.spring.web.service.CartService;
import com.spring.web.vo.CartVO;


@Service("cartService")
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAOMybatis cartDAO;

	@Override
	public void insertCart(CartVO vo) {
		cartDAO.insertCart(vo);
	}

	@Override
	public void updateCart(CartVO vo) {
		cartDAO.updateCart(vo);
	}

	@Override
	public void deleteCart(CartVO vo) {
		cartDAO.deleteCart(vo);
	}

	@Override
	public CartVO getCart(CartVO vo) {
		return cartDAO.getCart(vo);
	}

	@Override
	public List<CartVO> getCartList(CartVO vo) {
		return cartDAO.getCartList(vo);
	}


}
