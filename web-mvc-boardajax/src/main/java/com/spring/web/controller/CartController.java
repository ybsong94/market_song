package com.spring.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.web.service.CartService;
import com.spring.web.vo.BoardVO;
import com.spring.web.vo.CartVO;
import com.spring.web.vo.ReviewVO;


@Controller
@SessionAttributes("cart")
public class CartController {

	@Autowired
	private CartService cartService;

	@RequestMapping(value="/getCartList.do")
	public String getCartList(CartVO vo, Model model) { 
		System.out.println("GetCartListController - getCartList()");
		List<CartVO>cartList = cartService.getCartList(vo);
		
		model.addAttribute("cartList",cartList); // Model 정보 저장  
		return "getCartList.jsp";  // View 정보 저장
	}
	
	@RequestMapping(value="/getCart.do")
	public String getCart(CartVO vo, Model model) {
		System.out.println("GetCartController - getCart()");

		model.addAttribute("cart", cartService.getCart(vo)); // Model

		return "getCart.jsp";
	}
	
	@RequestMapping(value="/insertCart.do")
	public String insertCart(CartVO vo) {
		System.out.println("InsertCartController - insertCart()");
		cartService.insertCart(vo);
		
		return "redirect:getBoardList.do"; // Redirect
	}

	@RequestMapping(value="/updateCart.do")
	public String updateCart(CartVO vo) {
		System.out.println("UpdateCartController - updateCart()");

		System.out.println("Stock:" + vo.getStock());
		System.out.println("CartNo:" + vo.getCartNo());

		cartService.updateCart(vo);

		return "redirect:getBoardList.do"; // Redirect
	}

	@RequestMapping(value="/deleteCart.do")
	public String deleteCart(CartVO vo) {
		System.out.println("DeleteCartController - deleteCart()");

		cartService.deleteCart(vo);
		
		return "redirect:getBoardList.do"; // Redirect
	}
	
	@RequestMapping(value="/cart/updateStock.do")
	@ResponseBody
	public String ajax_updateStock(@ModelAttribute("cartVO") CartVO cartVO, HttpServletRequest request) throws Exception{
        System.out.println("ajax_updateStock");
        System.out.println("ajax_updateStock"+cartVO);
		   try{
	            cartService.updateCart(cartVO);
	        } catch (Exception e){
	            e.printStackTrace();
	        }
            
        return "success";
    }
	
	@RequestMapping(value="/cart/deleteCart.do")
	@ResponseBody
	public String ajax_deleteCart(@ModelAttribute("cartVO") CartVO cartVO, HttpServletRequest request) throws Exception{
		System.out.println("ajax_deleteCart"+cartVO);
		try{
			
			cartService.deleteCart(cartVO);
		} catch (Exception e){
			e.printStackTrace();
		}
		
		return "success";
	}
	
}