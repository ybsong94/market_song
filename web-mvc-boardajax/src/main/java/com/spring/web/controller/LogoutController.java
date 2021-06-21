package com.spring.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {

	@RequestMapping(value="/logout.do")
	public String logout(HttpSession httpSession) {
		System.out.println("LogoutController - logout()");

		httpSession.invalidate();

		return "redirect:index.jsp";
	}
}