package com.owth.dao.ingredientRST;

import java.util.List;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.owth.vo.ingredientRST.IngredientRSTVO;

@Repository
public class IngredientRSTDAO extends SqlSessionDaoSupport {
	
	/**
	 * 성분을 등록한다.
	 * @param 성분 등록한 용어
	 * @return 등록 결과
	 */
	public int ingredientInsert(IngredientRSTVO ingredientRSTVO)
	{
		return getSqlSession().insert("ingredientRST.ingredientInsert", ingredientRSTVO);
	}
	
	/**
	 * 성분을 조회한다.
	 * @return 성분 목록
	 */
	public List<IngredientRSTVO> getIngredientList(IngredientRSTVO ingredientRSTVO) {
		return getSqlSession().selectList("ingredientRST.getIngredientList", ingredientRSTVO);
	}
	
	/**
	 * 성분을 검색한다.
	 * @return 성분 목록
	 */
	public List<IngredientRSTVO> getIngredientSearchList(IngredientRSTVO ingredientRSTVO) {
		return getSqlSession().selectList("ingredientRST.getIngredientSearchList", ingredientRSTVO);
	}

	
}