package com.spring.web.test;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.spring.web.service.UserService;
import com.spring.web.vo.UserVO;

public class UserServiceTest {

	public static void main(String[] args) {
		//1. 컨테이너 구동
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");

		//2. UserServiceImpl Lookup
		UserService userService = (UserService)container.getBean("userService");

		//3. insertService Test
		UserVO vo = new UserVO();
		vo.setId("admin");
		vo.setPassword("1111");

		UserVO user = userService.getUser(vo);
		if(user != null) {
			System.out.println("Welcome!! " + user.getName());
		}else {
			System.out.println("Login Fail~~");
		}

		//4. 컨테이너 종료 		
		container.close();

	}

}
