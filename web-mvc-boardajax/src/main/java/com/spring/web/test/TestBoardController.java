package com.spring.web.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestBoardController {

	@RequestMapping(value="/testBoard.do")
	public void testBoard() {
		System.out.println("testBoard.do");
	}
}