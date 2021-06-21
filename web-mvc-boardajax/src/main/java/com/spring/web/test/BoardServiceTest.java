package com.spring.web.test;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.spring.web.service.BoardService;
import com.spring.web.vo.BoardVO;

public class BoardServiceTest {

	public static void main(String[] args) {
		//1. 컨테이너 구동
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");

		//2. BoardServiceImpl Lookup
		BoardService boardService = (BoardService)container.getBean("boardService");

		//3. insertService Test
		BoardVO vo = new BoardVO();
		vo.setTitle("test title");
//		vo.setWriter("test writer");
		vo.setContent("test content");
		//boardService.insertBoard(vo);

		//4. getServiceList Test
		List<BoardVO> boardList = boardService.getBoardList(vo);
		for(BoardVO board : boardList) {
			System.out.println(">>>>" + board.toString());
		}

		container.close();

	}

}