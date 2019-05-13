package com.owth.controller.front.MBoard;

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
public class MBoard {

	/** The logger. */
	protected Log logger = LogFactory.getLog(this.getClass());
	
	/** Object. */
	private RtnMessageUtil rtnMessageUtil = new RtnMessageUtil();


	@RequestMapping("/MBoard/board_1")
	public String MboardView_1() {
		
		return "/MBoard/board_1";
	}

	@RequestMapping("/MBoard/board_2")
	public String MboardView_2() {
		
		return "/MBoard/board_2";
	}

	@RequestMapping("/MBoard/board_3")
	public String MboardView_3() {
		
		return "/MBoard/board_3";
	}

	

	
}