package com.spring.web.service;

import java.util.List;

import com.spring.web.vo.CartVO;

public interface CartService {

	// Method
	// CART_INSERT
	void insertCart(CartVO vo);

	// CART_UPDATE
	void updateCart(CartVO vo);

	// CART_DELETE
	void deleteCart(CartVO vo);

	// CART_GET
	CartVO getCart(CartVO vo);

	// CART_LIST
	List<CartVO> getCartList(CartVO vo);
	
}