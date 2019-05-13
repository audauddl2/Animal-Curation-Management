package com.owth.service.product;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.owth.common.FileUtils;
import com.owth.dao.product.ProductDAO;
import com.owth.vo.product.ProductVO;

@Service
public class ProductService {
	
	@Autowired
	FileUtils fileUtils;
	
	/**
	 * 게시글 컬럼 DAO 클래스
	 */
	@Autowired
	private ProductDAO productDAO;
	
	/**
	 * 게시글 총 갯수
	 * @return 게시물 총 갯수
	 */
	public int getProductTotalCount(ProductVO productVO) {
		
		return productDAO.getProductTotalCount(productVO);
	}
	
	/**
	 * 게시글 목록
	 * @return 게시글 목록
	 */
	public List<ProductVO> getProductList(ProductVO productVO)
	{
		System.out.println("ProductService List Start =================================================");
		
		return productDAO.getProductList(productVO);
	}
	
	/**
	 * Front 제품 검색
	 */
	public List<ProductVO> getFProductList(ProductVO productVO) {
		
		return productDAO.getFProductList(productVO);
		
	}
	
	
	/**
	 * 제품 신규 등록
	 * @param 제품 VO
	 * @return 등록 결과
	 
	public int getProductInsert(ProductVO productVO)
	{
		return productDAO.getProductInsert(productVO);
	}
	 */
	/**
	 * 용어의 정보를 변경한다.
	 * @param dic 변경될 용어의 정보
	 * @return 변경 결과
	
	public int getProductUpdate(ProductVO productVO)
	{
		return productDAO.getProductUpdate(productVO);
	}
	 */
	
	/**
	 * 게시글 등록
	 * @return 등록 결과
	 */
/*	
	public void getColumnInsert(ColumnVO columnVO, Map<String,Object> map, HttpServletRequest request) throws Exception{
		MultipartFile multipartFile = null;
		
		columnDAO.getColumnInsert(columnVO);
		
		System.out.println("ColumnService Start =================================================");
		System.out.println("IDX : " + columnVO.getColumnIDX());
		
			List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(columnVO ,request);
			
			System.out.println("list size : " + list.size());
			
			if(list.size() != 0) {
				for(int i = 0, size = list.size(); i<size; i++) {
					columnDAO.insertFile(list.get(i));
				}
			}
			
			System.out.println("ColumnService end =================================================");
	}
	
*/	
	/**
	 * 게시글 조회수
	 * @return 조회수 증가
	 */
/*
	public int getColumnViewCnt(ColumnVO columnVO) {
		
		return columnDAO.getColumnViewCnt(columnVO);
	}
*/	
	/**
	 * 게시글 상세 조회
	 * @return 등록 결과
	 */
/*	
	public ColumnVO getColumnDetail(ColumnVO columnVO) {
		System.out.println("Detail Service Start =================================================");
		return columnDAO.getColumnDetail(columnVO);
	}
*/	
	
	/**
	 * 게시글 수정
	 * @return 수정 결과
	 */
/*	
	public int getColumnUpdate(ColumnVO columnVO)
	{
		return columnDAO.getColumnUpdate(columnVO);
	}
*/
	
	/**
	 * 게시글 삭제
	 * @return 삭제 결과
	 */
/*	
	public int getColumnDelete(ColumnVO columnVO)
	{
		return columnDAO.getColumnDelete(columnVO);
	}
*/
}