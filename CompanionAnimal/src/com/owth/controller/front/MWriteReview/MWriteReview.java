package com.owth.controller.front.MWriteReview;

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
import com.owth.service.codeMgt.CodeMgtService;
import com.owth.service.ingredientRST.IngredientRSTService;
import com.owth.vo.CodeMgt.CodeMgtVO;
import com.owth.vo.ingredientRST.IngredientRSTVO;

@Controller
public class MWriteReview {

	/** The logger. */
	protected Log logger = LogFactory.getLog(this.getClass());
	
	/** Object. */
	private RtnMessageUtil rtnMessageUtil = new RtnMessageUtil();


	@RequestMapping("/MWriteReview/writeReview_1")
	public String MWriteReviewView_1() {
		
		return "/MWriteReview/writeReview_1";
	}
	
	@RequestMapping("/MWriteReview/writeReview_2")
	public String MWriteReviewView_2() {
		
		return "/MWriteReview/writeReview_2";
	}
	
	
	
}