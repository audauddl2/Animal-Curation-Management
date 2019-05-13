package com.owth.service.comment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.owth.dao.comment.CommentDAO;
import com.owth.vo.comment.CommentVO;

@Service
public class CommentService {
	
	/**
	 * 리뷰 DAO 클래스
	 */
	@Autowired
	CommentDAO commentDAO;
	
	/**
	 * 성분을 등록한다.
	 * @param 성분 등록한 용어
	 * @return 등록 결과
	 */
	public int commentInsert(CommentVO commentVO)
	{
		return commentDAO.commentInsert(commentVO);
	}
	

}
