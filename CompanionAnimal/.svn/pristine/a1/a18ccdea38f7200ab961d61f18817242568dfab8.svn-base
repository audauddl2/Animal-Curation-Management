package com.owth.service.bbs;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.owth.common.FileUtils;
import com.owth.dao.Bbsmgt.BbsDAO;
import com.owth.vo.Bbsmgt.BbsVO;

@Service
public class BbsService {

	
	@Autowired
	FileUtils fileUtils;
	
	/**
	 * 게시글 컬럼 DAO 클래스
	 */
	@Autowired
	BbsDAO bbsDAO;
	
	/**
	 * 게시글 목록
	 * @return 게시글 목록
	 */
	public List<BbsVO> getBbsList(BbsVO bbsVO)
	{
		System.out.println("BbsService List Start =================================================");
		
		return bbsDAO.getBbsList(bbsVO);
	}
	
	/**
	 * 게시글 등록
	 * @return 등록 결과
	 */
	public void getBbsInsert(BbsVO bbsVO, Map<String,Object> map, HttpServletRequest request) throws Exception{
		
		bbsDAO.getBbsInsert(bbsVO);
		
		System.out.println("BbsService Start =================================================");
		System.out.println("IDX : " + bbsVO.getBbsIdx());
		
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;
		Iterator<String> iter = multi.getFileNames();
		MultipartFile multipartFile = null;
		
		while(iter.hasNext()) {
			multipartFile = multi.getFile(iter.next());
			if(multipartFile.isEmpty() == false) {
				System.out.println("===================================");
				System.out.println("name " + multipartFile.getName());
				System.out.println("filename " + multipartFile.getOriginalFilename());
				System.out.println("size " + multipartFile.getSize());
				System.out.println("===================================");
				
				List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(bbsVO ,request);
				
				System.out.println("list size : " + list.size());
				
				if(list.size() != 0) {
					for(int i = 0, size = list.size(); i<size; i++) {
						bbsDAO.insertFile(list.get(i));
					}
				}
			}else {
				System.out.println("파일이 없습니다.");
			}
		}
			
		System.out.println("BbsService end =================================================");
			
	}
	/**
	 * 게시글 조회수
	 * @return 조회수 증가
	 */
	public int getBbsViewCnt(BbsVO bbsVO) {
		
		return bbsDAO.getBbsViewCnt(bbsVO);
	}
	
	/**
	 * 게시글 상세 조회
	 * @return 조회 결과
	 */
	public BbsVO getBbsDetail(BbsVO bbsVO) {
		System.out.println("Detail Service Start =================================================");
		return bbsDAO.getBbsDetail(bbsVO);
	}
	
	/**
	 * 게시글 검색
	 * @return 검색 결과
	 */
	public List<BbsVO> getBbsSearch(BbsVO BbsVO)
	{
		System.out.println("BbsService Search Start =================================================");
		
		return bbsDAO.getBbsSearch(BbsVO);
	}
	
	
	/**
	 * 게시글 수정
	 * @return 수정 결과
	 */
	public int getBbsUpdate(BbsVO bbsVO)
	{
		return bbsDAO.getBbsUpdate(bbsVO);
	}
	
	/**
	 * 게시글 삭제
	 * @return 삭제 결과
	 */
	public int getBbsDelete(BbsVO bbsVO)
	{
		return bbsDAO.getBbsDelete(bbsVO);
	}
}
