package com.owth.dao.comment;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.owth.vo.comment.CommentVO;

@Repository
public class CommentDAO extends SqlSessionDaoSupport {
	
	/**
	 * 댓글를 등록한다.
	 * @param 댓글 등록한 용어
	 * @return 등록 결과
	 */
	public int commentInsert(CommentVO commentVO)
	{
		return getSqlSession().insert("comment.commentInsert", commentVO);
	}
	
}
