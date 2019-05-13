package com.owth.dao.Bbsmgt;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import com.owth.vo.Bbsmgt.BbsVO;

@Repository
public class BbsDAO extends SqlSessionDaoSupport {
	
	/**
	 * 게시글 목록 출력
	 * @return 게시글 목록
	 */
	public List<BbsVO> getBbsList(BbsVO bbsVO) {
		
		//System.out.println("BbsDAO Start =================================================");
		return getSqlSession().selectList("Bbs.getBbsList", bbsVO);
	}
	/**
	 * 게시글 등록
	 * @return 등록 결과
	 */
	public int getBbsInsert(BbsVO bbsVO) {
		System.out.println("ColumnDAO Start =================================================");
		return getSqlSession().insert("Bbs.getBbsInsert", bbsVO);
	}
	/**
	 * 게시글 조회수
	 * @return 조회수 증가
	 */
	public int getBbsViewCnt(BbsVO bbsVO) {
		return getSqlSession().update("Bbs.getBbsViewCnt",bbsVO);
	}
	/**
	 * 게시글 상세 조회
	 * @return 해당 게시글 내용
	 */
	public BbsVO getBbsDetail(BbsVO bbsVO) {
	
		return getSqlSession().selectOne("Bbs.getBbsDetail", bbsVO);
	}
	
	/**
	 * 게시글 검색
	 * @return 검색 목록
	 */
	public List<BbsVO> getBbsSearch(BbsVO bbsVO) {
		
		System.out.println("BbsDAO Start =================================================");
		
		return getSqlSession().selectList("Bbs.getBbsSearch", bbsVO);
	}
	
	/**
	 * 게시글 수정
	 * @return 수정 결과
	 */
	public int getBbsUpdate(BbsVO bbsVO)
	{
		return getSqlSession().update("Bbs.getBbsUpdate", bbsVO);
	}
	
	
	/**
	 * 게시글 삭제
	 * @return 삭제 결과
	 */
	public int getBbsDelete(BbsVO bbsVO)
	{
		return getSqlSession().delete("Bbs.getBbsDelete", bbsVO);
	}
	
	/**
	 * 파일 업로드
	 * @return 업로드 결과
	 */
	public void insertFile(Map<String, Object> map) throws Exception {
		System.out.println("BbsDAO Start =================================================");
		getSqlSession().insert("Bbs.insertFile",map);
	}

}
