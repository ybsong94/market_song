package com.spring.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.web.service.UserService;
import com.spring.web.vo.UserVO;


@Controller
public class UserController {

	@Autowired
	private UserService userService; // Service 추가

	
	@RequestMapping(value="/insertUser.do")
	public String insertUser(UserVO vo) {
		System.out.println("UserController - insertuser()");
		
//		if(vo.getId() == null || vo.getId().equals("")) {
//	        throw new IllegalArgumentException("ID를 입력해주세요.");
//	    }
		
		userService.insertUser(vo);
//		if(vo != null) {
//			return "redirect:login.do";
//		}
//		else return "index.jsp";
		return "redirect:login.do";
	}
	
	@RequestMapping(value="/deleteUser.do")
	public String deleteBoard(UserVO vo) {
		System.out.println("DeleteUserController - deleteUser()");
		UserVO user = userService.getUser(vo);
		if(user == null) {
			System.out.println("User not found");
			return "redirect:getBoardList.do";
		}
		
		userService.deleteUser(vo);
		//return "getBoardList.do"; // Forward
		return "index.jsp"; // Redirect
	}
	
	@RequestMapping(value="/updateUser.do")
	public String updateBoard(@ModelAttribute("user") UserVO vo) {
		System.out.println("UpdateUserController - updateUser()");

		System.out.println("Uno:" + vo.getUno());
		System.out.println("ID:" + vo.getId());
		System.out.println("Password:" + vo.getPassword());
		System.out.println("Name:" + vo.getName());

		userService.insertUser(vo);

		//return "getBoardList.do"; // Forward
		return "redirect:getBoardList.do"; // Redirect
	}
}