package com.owth.controller.admin.review;

import java.io.Writer;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kpu.jung.framework.exception.ServiceException;
import com.owth.common.RtnMessageUtil;
import com.owth.service.review.ReviewService;
import com.owth.vo.product.ProductVO;
import com.owth.vo.review.ReviewVO;

@Controller
public class ReviewController {

	/** The logger. */
	protected Log logger = LogFactory.getLog(this.getClass());
	
	/** Object. */
	private RtnMessageUtil rtnMessageUtil = new RtnMessageUtil();
	
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping("/review/reviewManagement")
	public Map<String, Object> getReviewList(ModelMap modelMap, @ModelAttribute ReviewVO reviewVO, HttpServletRequest request, Writer out) throws ServiceException{
			
		//System.out.println("getReviewList Call Start ===============================================================");

		
		List<ReviewVO> getReviewList = reviewService.getReviewList(reviewVO);

		//System.out.println("getReviewList : " + getReviewList.size());
		//System.out.println("getReviewList Call End ===============================================================");
		
		modelMap.addAttribute("getReviewList", getReviewList);
		
		return modelMap;

	}
	
	@RequestMapping("/reivew/reviewSearch")
	public Map<String, Object> getReviewSearchList(ModelMap modelMap, @ModelAttribute ReviewVO reviewVO, HttpServletRequest request, Writer out) throws ServiceException{
			
		//System.out.println("getReviewSearchList Call Start ===============================================================");

		
		List<ReviewVO> getReviewSearchList = reviewService.getReviewSearchList(reviewVO);
		
		//System.out.println("getReviewSearchList Size : " + getReviewSearchList.size());
		//System.out.println("getReviewSearchList Call End ===============================================================");
		
		modelMap.addAttribute("getReivewSearchList", getReviewSearchList);
		
		return modelMap;

	}
	
	@RequestMapping("/review/reviewContents")
	public Map<String, Object> getCommentList(ModelMap modelMap, @ModelAttribute ReviewVO reviewVO, HttpServletRequest request, Writer out) throws ServiceException{
			
		//System.out.println("getCommentList Call Start ===============================================================");

		List<ReviewVO> getReviewList = reviewService.getReviewList(reviewVO);
		
		List<ReviewVO> getCommentList = reviewService.getCommentList(reviewVO);
		
		//System.out.println("getCommentList Size : " + getReviewSearchList.size());
		//System.out.println("getCommentList Call End ===============================================================");
		
		modelMap.addAttribute("getReviewList", getReviewList);
		
		modelMap.addAttribute("getCommentList", getCommentList);
		
		return modelMap;

	}
	
	@RequestMapping("/review/reviewRegister")
	public String getReviewRegister(ModelMap modelMap, @ModelAttribute ReviewVO reviewVO, HttpServletRequest request, Writer out) throws ServiceException{
		
		System.out.println("테스트");
		
		// Login Check
//		MemberLoginVO user = (MemberLoginVO)admLoginUtil.chkLogin(request);
		
//		if(user != null){

/*		
			MajorVO majorVo = new MajorVO();										// 전공 구번 설정
			List<MajorVO> majorList = majorService.getMajorList(majorVo);			//전공구분 List 
	
			modelMap.addAttribute("majorList", majorList);							// modelMap에 추가
*/			
			modelMap.addAttribute("review", reviewVO);

		 	if ( reviewVO.getReviewIDX() > 0 ) {
				try{
//					ProductVO productVO = productService.getDetail(productVo);
//					modelMap.addAttribute("productDetail", productVO);	
				 	
					return "/review/reviewRegister";
						
				}catch (Exception e) {
		            if (logger.isErrorEnabled()) {
		                logger.error(e.getMessage(), e);
		            }
		        }
			} else {
	
				return "/review/reviewRegister";
			}
/*			
		} else {
			try{
				out.write(admLoginUtil.getLogoutMessage());				
			}catch(IOException e) {
	            if (logger.isErrorEnabled()) {
	                logger.error(e.getMessage(), e);
	            }
	            throw new ApplicationException("io.StreamError", e);
			}				
			return null;
		}
*/			
		return null;
	}

	@RequestMapping("/review/reviewRegisterAction")
	 public String reviewRegisterAction(ModelMap modelMap, @ModelAttribute ReviewVO reviewVO, HttpServletRequest request, Writer out) throws ServiceException{

		try{			
			reviewService.reviewInsert(reviewVO);
			
			return "/review/reviewManagement";
				
		}catch (Exception e) {
            if (logger.isErrorEnabled()) {
                logger.error(e.getMessage(), e);
            }
        }
		
			
		return null;
			
	}
	
}
