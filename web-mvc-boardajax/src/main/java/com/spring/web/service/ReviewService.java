package com.spring.web.service;

import java.util.List;

import com.spring.web.vo.ReviewVO;

public interface ReviewService {
	
	//REVIEW_GET
	public ReviewVO getReview(ReviewVO vo);
	
	//REVIEW_INSERT
	public void insertReview(ReviewVO vo);
	
	//REVIEW_DELETE
	public void deleteReview(ReviewVO vo);

	//REVIEW_UPDATE
	public void updateReview(ReviewVO vo);

	//REVIEW_LIST
	public List<ReviewVO> getReviewList(ReviewVO vo);
}
