package com.owth.service.codeMgt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.owth.dao.codeMgt.CodeMgtDAO;
import com.owth.vo.CodeMgt.CodeMgtVO;

@Service
public class CodeMgtService {
	
	/**
	 * 성분 DAO 클래스
	 */
	@Autowired
	CodeMgtDAO codeMgtDAO;
	
	/**
	 * 코드를 등록한다.
	 * @param 코드 등록한 용어
	 * @return 등록 결과
	 */
	public int CodeInsert(CodeMgtVO codeMgtVO)
	{
		return codeMgtDAO.CodeInsert(codeMgtVO);
	}
	/**
	 * 위험도 종류 및 등록수를 조회한다.
	 * @return 위험도 종류 및 등록수 목록
	 */
	public List<CodeMgtVO> getDangerCodeCntList(CodeMgtVO codeMgtVO) {
		return codeMgtDAO.getDangerCodeCntList(codeMgtVO);
	}
	
	/**
	 * 용도 종류 및 등록수를 조회한다.
	 * @return 위험도 종류 및 등록수 목록
	 */
	public List<CodeMgtVO> getUseCodeCntList(CodeMgtVO codeMgtVO) {
		return codeMgtDAO.getUseCodeCntList(codeMgtVO);
	}
	/**
	 * 제품 분류별 코드 호출
	 * 1 - 용도
	 * 2 - 원료
	 * 3 - 기능
	 * 4 - 종류
	 * @return 위험도 종류 및 등록수 목록
	 */
	public List<CodeMgtVO> getProductCategoryList(int productCategory) {
		
		CodeMgtVO codeMgtVO = new CodeMgtVO();
		codeMgtVO.setProductCategory(productCategory);
		
		return codeMgtDAO.getProductCategoryList(codeMgtVO);
	}
	/**
	 * 위험도를 수정한다.
	 * @param 위험도 등록한 용어
	 * @return 등록 결과
	 */
	public int dangerCodeUpdate(CodeMgtVO codeMgtVO)
	{
		System.out.println("위험도 수정 서비스");
		return codeMgtDAO.dangerCodeUpdate(codeMgtVO);
	}	
	/**
	 * 용도를 수정한다.
	 * @param 용도 등록한 용어
	 * @return 등록 결과
	 */
	public int useCodeUpdate(CodeMgtVO codeMgtVO)
	{
		System.out.println("용도 수정 서비스");
		return codeMgtDAO.useCodeUpdate(codeMgtVO);
	}
	
	/**
	 * 용도를 등록한다.
	 * @param 용도 등록한 용어
	 * @return 등록 결과
	 
	public int useCodeInsert(CodeMgtVO codeMgtVO)
	{
		return codeMgtDAO.dangerCodeInsert(codeMgtVO);
	}
	*/
	
	/**
	 * 위험도를 조회한다.
	 * @return 위험도 목록
	 */
	public List<CodeMgtVO> getDangerCodeList(CodeMgtVO CodeMgtVO) {
		System.out.println("Danger CodeService List Start ===========================");
		return codeMgtDAO.getDangerCodeList(CodeMgtVO);
	}
	
	/**
	 * 용도를 조회한다.
	 * @return 용도 목록
	 */
	public List<CodeMgtVO> getUseCodeList(CodeMgtVO codeMgVO) {
		return codeMgtDAO.getUseCodeList(codeMgVO);
	}
	
}
