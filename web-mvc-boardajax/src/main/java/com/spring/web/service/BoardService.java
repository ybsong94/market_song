package com.spring.web.service;

import java.util.List;
import com.spring.web.vo.BoardVO;

public interface BoardService {

	// Method
	// BOARD_INSERT
	void insertBoard(BoardVO vo);

	// BOARD_UPDATE
	void updateBoard(BoardVO vo);

	// BOARD_DELETE
	void deleteBoard(BoardVO vo);

	// BOARD_GET
	BoardVO getBoard(BoardVO vo);

	// BOARD_LIST
	List<BoardVO> getBoardList(BoardVO vo);
	
	// BOARD_CATEGORYLIST
	List<BoardVO> getBoardCategoryList(BoardVO vo);
	
	// BOARD_INDEX
	List<BoardVO> index(BoardVO vo);
	
	// BOARD_COUNT
	int getBoardCount(BoardVO vo);
	

}