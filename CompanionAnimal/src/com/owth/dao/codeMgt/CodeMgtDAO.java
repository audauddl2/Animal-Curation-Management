package com.owth.dao.codeMgt;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.owth.vo.CodeMgt.CodeMgtVO;

@Repository
public class CodeMgtDAO extends SqlSessionDaoSupport {
	
	/**
	 * 위험도를 등록한다.
	 * @param 위험도 등록한 용어
	 * @return 등록 결과
	 */
	public int CodeInsert(CodeMgtVO codeMgtVO)
	{
		return getSqlSession().insert("codeMgt.CodeInsert", codeMgtVO);
	}
	/**
	 * 위험도의 종류 및 등록수 를 검색한다.
	 * @return 위험도의 종류 및 등록수 목록
	 */
	public List<CodeMgtVO> getDangerCodeCntList(CodeMgtVO codeMgtVO) {
		return getSqlSession().selectList("codeMgt.getDangerCodeCntList", codeMgtVO);
	}
	
	/**
	 * 용도의 종류 및 등록수 를 검색한다.
	 * @return 용도의 종류 및 등록수 목록
	 */
	public List<CodeMgtVO> getUseCodeCntList(CodeMgtVO codeMgtVO) {
		return getSqlSession().selectList("codeMgt.getUseCodeCntList", codeMgtVO);
	}

	/**
	 * 용도의 종류 및 등록수 를 검색한다.
	 * @return 용도의 종류 및 등록수 목록
	 */
	public List<CodeMgtVO> getProductCategoryList(CodeMgtVO codeMgtVO) {
		return getSqlSession().selectList("codeMgt.getProductCategoryList", codeMgtVO);
	}
	
	
	/**
	 * 위험도를 조회한다.
	 * @return 위험도 목록
	 */
	public List<CodeMgtVO> getDangerCodeList(CodeMgtVO codeMgtVO) {
		System.out.println("DangerCodeDAO List Start =================================================");
		return getSqlSession().selectList("codeMgt.getDangerCodeList", codeMgtVO);
	}
	
	/**
	 * 용도를 조회한다.
	 * @return 용도 목록
	 */
	public List<CodeMgtVO> getUseCodeList(CodeMgtVO codeMgtVO) {
		return getSqlSession().selectList("codeMgt.getUseCodeList", codeMgtVO);
	}
	/**
	 *
	 * 위험도를 수정한다.
	 * @return 위험도 수정 결과
	 */
	public int dangerCodeUpdate(CodeMgtVO codeMgVO) {
		System.out.println("위험도 수정 DAO");
		return getSqlSession().insert("codeMgt.dangerCodeUpdate", codeMgVO);
	}
	/**
	 *
	 * 용도를 수정한다.
	 * @return 위험도 수정 결과
	 */
	public int useCodeUpdate(CodeMgtVO codeMgVO) {
		return getSqlSession().insert("codeMgt.useCodeUpdate", codeMgVO);
	}
	
}