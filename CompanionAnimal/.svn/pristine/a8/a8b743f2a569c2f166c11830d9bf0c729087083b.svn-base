package com.owth.dao.review;

import java.util.List;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.owth.vo.review.ReviewVO;

@Repository
public class ReviewDAO extends SqlSessionDaoSupport {
	
	/**
	 * 리뷰를 등록한다.
	 * @param 리뷰 등록한 용어
	 * @return 등록 결과
	 */
	public int reviewInsert(ReviewVO reviewVO)
	{
		return getSqlSession().insert("review.reivewInsert", reviewVO);
	}
	
	/**
	 * 리뷰를 조회한다.
	 * @return 리뷰 목록
	 */
	public List<ReviewVO> getReviewList(ReviewVO reviewVO) {
		return getSqlSession().selectList("review.getReviewList", reviewVO);
	}
	
	/**
	 * 리뷰를 검색한다.
	 * @return 리뷰 목록
	 */
	public List<ReviewVO> getReviewSearchList(ReviewVO reviewVO) {
		return getSqlSession().selectList("review.getReviewSearchList", reviewVO);
	}

	/**
	 * 댓글를 조회한다.
	 * @return 댓슬 목록
	 */
	public List<ReviewVO> getCommentList(ReviewVO reviewVO) {
		return getSqlSession().selectList("review.getCommentList", reviewVO);
	}
	
}
