package com.owth.service.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.owth.dao.review.ReviewDAO;
import com.owth.vo.review.ReviewVO;

@Service
public class ReviewService {
	
	/**
	 * 리뷰 DAO 클래스
	 */
	@Autowired
	ReviewDAO reviewDAO;
	
	/**
	 * 성분을 등록한다.
	 * @param 성분 등록한 용어
	 * @return 등록 결과
	 */
	public int reviewInsert(ReviewVO reviewVO)
	{
		return reviewDAO.reviewInsert(reviewVO);
	}
	
	/**
	 * 성분을 조회한다.
	 * @return 성분 목록
	 */
	public List<ReviewVO> getReviewList(ReviewVO reviewVO) {
		return reviewDAO.getReviewList(reviewVO);
	}
	
	/**
	 * 성분을 검색한다.
	 * @return 성분 목록
	 */
	public List<ReviewVO> getReviewSearchList(ReviewVO reviewVO) {
		return reviewDAO.getReviewSearchList(reviewVO);
	}
	
	/**
	 * 댓글을 조회한다.
	 * @return 성분 목록
	 */
	public List<ReviewVO> getCommentList(ReviewVO reviewVO) {
		return reviewDAO.getCommentList(reviewVO);
	}
	

}
