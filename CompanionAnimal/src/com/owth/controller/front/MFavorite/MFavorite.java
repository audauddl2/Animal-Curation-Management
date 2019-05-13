package com.owth.controller.front.MFavorite;

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
public class MFavorite {

	/** The logger. */
	protected Log logger = LogFactory.getLog(this.getClass());
	
	/** Object. */
	private RtnMessageUtil rtnMessageUtil = new RtnMessageUtil();


	@RequestMapping("/MFavorite/favorite_1")
	public String MFavoriteView_1() {
		
		return "/MFavorite/favorite_1";
	}
	
	@RequestMapping("/MFavorite/favorite_2")
	public String MFavoriteView_2() {
		
		return "/MFavorite/favorite_2";
	}
	
	@RequestMapping("/MFavorite/favorite_3")
	public String MFavoriteView_3() {
		
		return "/MFavorite/favorite_3";
	}


	
}