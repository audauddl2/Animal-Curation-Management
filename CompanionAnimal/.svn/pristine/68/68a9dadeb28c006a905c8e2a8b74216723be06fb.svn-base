package com.owth.dao.product;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.owth.vo.product.ProductVO;

@Repository
public class ProductDAO extends SqlSessionDaoSupport  {
	
	/**
	 * 게시글 총 갯수
	 * @return 게시글 총 갯수
	 */
	public int getProductTotalCount(ProductVO productVO) {
		
		//System.out.println("ColumnDAO Start =================================================");
		
		return getSqlSession().selectOne("product.getProductTotalCount", productVO);
	}

	
	/**
	 * 게시글 목록 출력
	 * @return 게시글 목록
	 */
	public List<ProductVO> getProductList(ProductVO productVO) {
		
		//System.out.println("ColumnDAO Start =================================================");
		
		return getSqlSession().selectList("product.getProductList", productVO);
	}
	/**
	 * 게시글 등록
	 * @return 등록 결과
	 */
	public int getColumnInsert(ProductVO productVO) {
		System.out.println("ColumnDAO Start =================================================");
		return getSqlSession().insert("Column.getColumnInsert", productVO);
	}
	
	/**
	 * Front 용도별 검색
	 */
	public List<ProductVO> getFProductList(ProductVO productVO) {
		
		return getSqlSession().selectList("product.getFProductList", productVO);
		
	}
	
	
	
	/**
	 * 게시글 조회수
	 * @return 조회수 증가
	 */
	public int getColumnViewCnt(ProductVO productVO) {
		return getSqlSession().update("Column.getColumnViewCnt",productVO);
	}
	/**
	 * 게시글 상세 조회
	 * @return 해당 게시글 내용
	 */
	public ProductVO getColumnDetail(ProductVO productVO) {
	
		return getSqlSession().selectOne("Column.getColumnDetail", productVO);
	}
	
	/**
	 * 게시글 수정
	 * @return 수정 결과
	 */
	public int getColumnUpdate(ProductVO productVO)
	{
		return getSqlSession().update("Column.getColumnUpdate", productVO);
	}
	
	
	/**
	 * 게시글 삭제
	 * @return 삭제 결과
	 */
	public int getColumnDelete(ProductVO productVO)
	{
		return getSqlSession().delete("Column.getColumnDelete", productVO);
	}
	
	/**
	 * 파일 업로드
	 * @return 업로드 결과
	 */
	public void insertFile(Map<String, Object> map) throws Exception {
		System.out.println("ColumnDAO Start =================================================");
		getSqlSession().insert("Column.insertFile",map);
	}

}
