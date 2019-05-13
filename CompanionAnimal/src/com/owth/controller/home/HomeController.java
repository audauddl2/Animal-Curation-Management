package com.owth.controller.home;

import java.io.IOException;
import java.io.Writer;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kpu.jung.framework.exception.ApplicationException;
import com.kpu.jung.framework.exception.ServiceException;
import com.kpu.jung.framework.support.web.paging.Pager;
import com.kpu.jung.framework.support.web.paging.SimplePagerImpl;

import com.owth.common.RtnMessageUtil;

import com.owth.vo.home.HomeVO;

@Controller
public class HomeController {

	/** The logger. */
	protected Log logger = LogFactory.getLog(this.getClass());
	
	/** Object. */
	private RtnMessageUtil rtnMessageUtil = new RtnMessageUtil();
	
	@RequestMapping("/adm/home")
	public String getDicCreate(ModelMap modelMap, @ModelAttribute HomeVO homeVO, HttpServletRequest request, Writer out) throws ServiceException{
		
//		System.out.println("테스트");
		
		// Login Check
//		MemberLoginVO user = (MemberLoginVO)admLoginUtil.chkLogin(request);
		
//		if(user != null){

/*		
			MajorVO majorVo = new MajorVO();										// 전공 구번 설정
			List<MajorVO> majorList = majorService.getMajorList(majorVo);			//전공구분 List 
	
			modelMap.addAttribute("majorList", majorList);							// modelMap에 추가
*/			
		 	modelMap.addAttribute("condition", homeVO);

		 	if ( homeVO.getHomeIDX() > 0 ) {
				try{
//					ProductVO productVO = productService.getDetail(productVo);
//					modelMap.addAttribute("productDetail", productVO);	
				 	
					return "/home/home";
						
				}catch (Exception e) {
		            if (logger.isErrorEnabled()) {
		                logger.error(e.getMessage(), e);
		            }
		        }
			} else {
	
				return "/home/home";
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
	
}
