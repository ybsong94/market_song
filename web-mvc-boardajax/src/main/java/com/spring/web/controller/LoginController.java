package com.spring.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.web.service.UserService;
import com.spring.web.vo.UserVO;


@Controller
public class LoginController {

	@Autowired
	private UserService userService; // Service 추가

	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(UserVO vo, HttpSession httpSession, Model model) {
		System.out.println("LoginController - login()");
		
		if(vo.getId() == null || vo.getId().equals("")) {
	        throw new IllegalArgumentException("login() - id not found");
	    }
		
		UserVO user = userService.getUser(vo);
		if(user != null) {
			httpSession.setAttribute("userName", user.getName());
			httpSession.setAttribute("userUno", user.getUno());
			return "redirect:getBoardList.do";
		}
		else return "login.jsp";

	}

	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginView() {
		System.out.println("LoginController - loginView()");

		return "login.jsp";

	}
	
}