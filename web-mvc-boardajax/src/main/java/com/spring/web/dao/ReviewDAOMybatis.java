package com.spring.web.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.web.vo.ReviewVO;

@Repository
public class ReviewDAOMybatis extends SqlSessionDaoSupport{

	private SqlSession mybatis = null;

	@Override
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
		mybatis = getSqlSession();
	}

	public void insertReview(ReviewVO vo) {
		System.out.println("mybatis - insertReview()");
		mybatis.insert("ReviewDAO.insertReview", vo);
	}

	public void updateReview(ReviewVO vo) {
		System.out.println("mybatis - updateReview()");

		mybatis.update("ReviewDAO.updateReview", vo);
	}

	public void deleteReview(ReviewVO vo) {
		System.out.println("mybatis - deleteReview()");

		mybatis.delete("ReviewDAO.deleteReview", vo);
	}

	public ReviewVO getReview(ReviewVO vo) {
		System.out.println("mybatis - getReview()");

		return (ReviewVO) mybatis.selectOne("ReviewDAO.getReview", vo);
	}
	
	public List<ReviewVO> getReviewList(ReviewVO vo) {
		System.out.println("mybatis - getReviewList()");

		return mybatis.selectList("ReviewDAO.getReviewList", vo);
	}
	
}
