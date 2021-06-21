package com.spring.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.web.dao.ReviewDAOMybatis;
import com.spring.web.service.ReviewService;
import com.spring.web.vo.ReviewVO;


@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAOMybatis reviewDAO;

	@Override
	public ReviewVO getReview(ReviewVO vo) {
		return reviewDAO.getReview(vo);
	}

	@Override
	public void insertReview(ReviewVO vo) {
		reviewDAO.insertReview(vo);
	}

	@Override
	public void deleteReview(ReviewVO vo) {
		reviewDAO.deleteReview(vo);
	}

	@Override
	public void updateReview(ReviewVO vo) {
		reviewDAO.updateReview(vo);
	}

	@Override
	public List<ReviewVO> getReviewList(ReviewVO vo) {
		return reviewDAO.getReviewList(vo);
	}


}
