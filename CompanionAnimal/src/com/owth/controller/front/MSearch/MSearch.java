package com.owth.controller.front.MSearch;

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
public class MSearch {

	/** The logger. */
	protected Log logger = LogFactory.getLog(this.getClass());
	
	/** Object. */
	private RtnMessageUtil rtnMessageUtil = new RtnMessageUtil();


	@RequestMapping("/MSearch/search_1")
	public String MSearchView_1() {
		
		return "/front/MSearch/search_1";
	}
	
	@RequestMapping("/MSearch/search_2")
	public String MSearchView_2() {
		
		return "/front/MSearch/search_2";
	}
	
	@RequestMapping("/MSearch/search_3")
	public String MSearchView_3() {
		
		return "/front/MSearch/search_3";
	}
	
	@RequestMapping("/MSearch/search_4")
	public String MSearchView_4() {
		
		return "/front/MSearch/search_4";
	}
	
	
}