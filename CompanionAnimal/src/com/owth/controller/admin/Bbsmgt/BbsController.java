package com.owth.controller.admin.Bbsmgt;

import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.jdbc.SQL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kpu.jung.framework.exception.ServiceException;
import com.owth.service.bbs.BbsService;
import com.owth.vo.Bbsmgt.BbsVO;

 
/*
 * 
 * 게시판 컬럼 컨트롤러
 * 작성, 상세, 수정, 삭제
 * Write
 * Detail
 * Update
 * Delete
 */
@Controller
public class BbsController {
	
	private static final Logger logger = LoggerFactory.getLogger(BbsController.class);
	
	@Autowired
	BbsService service;
	
	
	// 게시글 목록
	@RequestMapping("/bbsList")
	public String getBbsList(ModelMap modelMap, @ModelAttribute BbsVO bbsVO, HttpServletRequest request, Writer out) throws ServiceException{
			
		System.out.println("ColumnList Call Start ===============================================================");
		String flag = "";
		flag = request.getParameter("flag");
		
		System.out.println("flag : =========================" + flag);
		bbsVO.setFlag(flag);
		
		//게시글 출력
		List<BbsVO> noticeList = service.getBbsList(bbsVO);
		List<BbsVO> qnaList = service.getBbsList(bbsVO);
		List<BbsVO> eventList = service.getBbsList(bbsVO);
		List<BbsVO> product_analysisList = service.getBbsList(bbsVO);
		List<BbsVO> adList = service.getBbsList(bbsVO);
		if(flag.equals("co")) {
			//컬럼 -> 공지 출력
			bbsVO.setFlag("no");
			List<BbsVO> columnList_n = service.getBbsList(bbsVO);
			modelMap.addAttribute("noticeList", columnList_n);
			
			//컬럼 출력 
			bbsVO.setFlag("co");
			List<BbsVO> columnList = service.getBbsList(bbsVO);
			modelMap.addAttribute("columnList", columnList);
			return "/board/column/columnList";
		}//공지사항 페이지 리스트
		else if(flag.equals("no")) {
			modelMap.addAttribute("noticeList", noticeList);
			return "/board/notice/noticeList";
		}//QnA 페이지 리스트
		else if(flag.equals("qa")) {
			modelMap.addAttribute("qnaList", qnaList);
			return "/board/qna/qnaList";
		}//이벤트 페이지 리스트
		else if(flag.equals("ev")) {
			modelMap.addAttribute("eventList", eventList);
			return "/board/qna/eventList";
		}
		//제품 분석 요청 페이지 리스트
		else if(flag.equals("pa")) {
			modelMap.addAttribute("product_analysis", product_analysisList);
			return "/board/product_analysis/pa_req_List";
		}
		//제품 분석 요청 페이지 리스트
		else if(flag.equals("ad")) {
			modelMap.addAttribute("adList", adList);
			return "/board/ad/adList";
		}
	
		return null;
	}
	
	//게시글 작성 action
	@RequestMapping("/write")
	public String getBbsInsert(RedirectAttributes rttr, ModelMap modelMap, Map<String,Object> map, @ModelAttribute BbsVO bbsVO, HttpServletRequest request, HttpServletResponse response, Writer out) throws Exception{
		
		System.out.println("bbsController Start =================================================");
		String flag = request.getParameter("flag");	// flag= co: 컬럼, no: 공지, qa: Q&A, pa: 제품분석요청
		
		if(request.getParameter("flagCheckBox") == null) {
			flag="co";
		}else if(request.getParameter("flagCheckBox").equals("on")){
			flag="no";
		}
		bbsVO.setFlag(flag);
		
		System.out.println("flag : " + bbsVO.getFlag());
		
		try{
			
			service.getBbsInsert(bbsVO, map, request);
			System.out.println("등록 성공");
			
			if(flag.equals("co")) { 
				
				return "redirect:bbsList?flag=co";
					
			}else if(flag.equals("no")){
				
				return "redirect:bbsList?flag=no";
				
			}else if(flag.equals("qa")){

				return "redirect:bbsList?flag=qa";
			}

		}catch (Exception e) {
            if (logger.isErrorEnabled()) {
                logger.error(e.getMessage(), e);
            }
        }
		
		/**/
		
		
		return null;
	}
	
	//게시글 수정 action
	@RequestMapping("/update")
	public String getBbsUpdate(RedirectAttributes rttr ,ModelMap modelMap, @ModelAttribute BbsVO bbsVO, HttpServletRequest request, Writer out) throws ServiceException{

		System.out.println("==========================테스트=================================");
		System.out.println("title" + bbsVO.getBbsTitle());
		System.out.println("content" + bbsVO.getBbsContent());
		System.out.println("writer" + bbsVO.getWriter());
		String flag = request.getParameter("flag");
		
		try {
			
			if(flag.equals("co")) {
				service.getBbsUpdate(bbsVO);
				System.out.println(" Column 수정 성공================");
				return "redirect:/bbsList?flag=co";
			}
			if(flag.equals("no")){
				service.getBbsUpdate(bbsVO);
				System.out.println(" Notice 수정 성공================");
				return "redirect:/bbsList?flag=no";
			}
			if(flag.equals("qa")){
				service.getBbsUpdate(bbsVO);
				System.out.println(" QnA 수정 성공================");
				return "redirect:/bbsList?flag=qa";
			}

		} catch (Exception e) {
			if (logger.isErrorEnabled()) {
				logger.error(e.getMessage(), e);
			}
		}
		return null;

	}
		
	
	//게시글 삭제 action
	@RequestMapping("/delete")
	public String BbsDelete(RedirectAttributes rttr ,ModelMap modelMap, @ModelAttribute BbsVO bbsVO, HttpServletRequest request, Writer out) throws ServiceException{
		
		System.out.println("=================IDX" + bbsVO.getBbsIdx());
		System.out.println("================= :" + request.getParameter("columnDelete"));
			if(request.getParameter("columnDelete") != null
					&& request.getParameter("noticeDelete") == null && request.getParameter("qnaDelete") == null) {
	
				service.getBbsDelete(bbsVO);
				System.out.println(" Column 삭제 성공================");
				
				return "redirect:bbsList?flag=co";
			}
			else if(request.getParameter("noticeDelete") != null
					&& request.getParameter("columnDelete") == null && request.getParameter("qnaDelete") == null){
				
				service.getBbsDelete(bbsVO);
				System.out.println(" Notice 삭제 성공================");
				
				return "redirect:bbsList?flag=no";
			}
			else if(request.getParameter("qnaDelete") != null 
					&& request.getParameter("columnDelete") == null && request.getParameter("noticeDelete") == null){
				
				service.getBbsDelete(bbsVO);
				System.out.println(" QnA 삭제 성공================");
				
				return "redirect:bbsList?flag=qn";
			}

		return null;
	}
	/***********************************************컬럼 처리***********************************************/
	
		//컬럼 작성 화면
		@RequestMapping("/board/column/columnWrite")
		public String ColumnInsertView() {
		
			return "/board/column/columnWrite";
		}
	
		// 컬럼 상세 조회
		@RequestMapping("/board/column/columnDetail")
		public Map<String, Object> getColumnDetail(ModelMap modelMap, @ModelAttribute BbsVO bbsVO, HttpServletRequest request, Writer out) throws ServiceException{
					
			System.out.println("columnDetail Call Start ===============================================================");
			//게시글 조회수 증가
			service.getBbsViewCnt(bbsVO);
			System.out.println("viewCnt :" + bbsVO.getBbsCnt());
			bbsVO = service.getBbsDetail(bbsVO);
					
			System.out.println("columnDetail Call End ===============================================================");
			modelMap.addAttribute("columnDetail", bbsVO);
					
			return modelMap;
			
		}
			
		// 게시글 검색 action
		@RequestMapping("/board/column/columnSearch")
		public Map<String, Object> getBbsSearch(ModelMap modelMap, @ModelAttribute BbsVO bbsVO,
				HttpServletRequest request, Writer out) throws ServiceException{
						
			try{
						
				// 공지사항 출력 ( 고정 )
				bbsVO.setFlag("no");
				List<BbsVO> noticeList = service.getBbsList(bbsVO);
				modelMap.addAttribute("noticeList", noticeList);	
						
				//컬럼 검색 결과 출력
				System.out.println("ColumnSearch Call Start ===============================================================");
				bbsVO.setFlag("co");
				List<BbsVO> columnSearch = service.getBbsSearch(bbsVO);
							
				System.out.println("ColumnSearch" + columnSearch.size());
				System.out.println("ColumnSearch Call End ===============================================================");
				//System.out.println("KeyWord : " + bbsVO.getKeyWord());
				//System.out.println("KeyField : " + bbsVO.getKeyField());
				modelMap.addAttribute("columnSearch", columnSearch);
	
			}catch (Exception e) {
				if (logger.isErrorEnabled()) {
						logger.error(e.getMessage(), e);
				}
			}
						
			return modelMap;
						
		}
					
		//게시글 수정 view
		@RequestMapping("/board/column/columnUpdate")
		public Map<String, Object> ColumnUpdateView(ModelMap modelMap, @ModelAttribute BbsVO bbsVO, HttpServletRequest request, Writer out) throws ServiceException{
					
			bbsVO = service.getBbsDetail(bbsVO);
					
			modelMap.addAttribute("columnUpdate", bbsVO);
					
			return modelMap;
		}
	
	/***********************************************공지 사항 처리***********************************************/
		//공지 작성 화면
		@RequestMapping("/board/notice/noticeWrite")
		public String NoticeInsertView() {
				
			return "/board/notice/noticeWrite";
		}

		// 공지사항 상세 조회
		@RequestMapping("/board/notice/noticeDetail")
		public Map<String, Object> getNoticeDetail(ModelMap modelMap, @ModelAttribute BbsVO bbsVO, HttpServletRequest request, Writer out) throws ServiceException{
					
			System.out.println("noticeDetail Call Start ===============================================================");
			//게시글 조회수 증가
			service.getBbsViewCnt(bbsVO);
			System.out.println("viewCnt :" + bbsVO.getBbsCnt());
			bbsVO = service.getBbsDetail(bbsVO);
				
			System.out.println("noticeDetail Call End ===============================================================");
			modelMap.addAttribute("noticeDetail", bbsVO);
					
			return modelMap;
					
		}
			
		//공지 게시글 수정 view
		@RequestMapping("/board/notice/noticeUpdate")
		public Map<String, Object> NoticeUpdateView(ModelMap modelMap, @ModelAttribute BbsVO bbsVO, HttpServletRequest request, Writer out) throws ServiceException{
				
			bbsVO = service.getBbsDetail(bbsVO);
				
			modelMap.addAttribute("noticeUpdate", bbsVO);
				
			return modelMap;
		}
	/***********************************************제품 분석 요청 처리***********************************************/
		//제품 분석 요청 페이지 작성 화면
		@RequestMapping("/board/product_analysis/pa_req_Write")
		public String ProductAnalysisInsertView() {
				
			return "/board/product_analysis/pa_req_Write";
		}
		
	/***********************************************광고 처리***********************************************/
		//광고 작성 화면
		@RequestMapping("/board/ad/adWrite")
		public String AdInsertView() {
				
			return "/board/ad/adWrite";
		}
}
