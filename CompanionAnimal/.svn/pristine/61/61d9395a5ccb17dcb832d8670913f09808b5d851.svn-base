package com.owth.controller.admin.ingredientRST;

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
public class IngredientRSTController {

	/** The logger. */
	protected Log logger = LogFactory.getLog(this.getClass());
	
	/** Object. */
	private RtnMessageUtil rtnMessageUtil = new RtnMessageUtil();

	@Autowired
	IngredientRSTService ingredientRSTService;
	
	@Autowired
	CodeMgtService codeMgtService;
	
	@RequestMapping("/ingredientRST/ingredientInquiry")
	public Map<String, Object> getIngredientList(ModelMap modelMap, @ModelAttribute IngredientRSTVO ingredientRSTVO, HttpServletRequest request, Writer out) throws ServiceException{
			
		//System.out.println("getIngredientList Call Start ===============================================================");

		
		List<IngredientRSTVO> getIngredientList = ingredientRSTService.getIngredientList(ingredientRSTVO);

		//System.out.println("getIngredientList : " + getIngredientList.size());
		//System.out.println("getIngredientList Call End ===============================================================");
		
		modelMap.addAttribute("getIngredientList", getIngredientList);
		
		return modelMap;

	}
	
	@RequestMapping("/ingredientRST/ingredientSearch")
	public Map<String, Object> getIngredientSearchList(ModelMap modelMap, @ModelAttribute IngredientRSTVO ingredientRSTVO, HttpServletRequest request, Writer out) throws ServiceException{
			
		System.out.println("getIngredientSearchList Call Start ===============================================================");

		
		List<IngredientRSTVO> getIngredientSearchList = ingredientRSTService.getIngredientSearchList(ingredientRSTVO);
		
		System.out.println("getIngredientSearchList Size : " + getIngredientSearchList.size());
		System.out.println("getIngredientSearchList Call End ===============================================================");
		
		modelMap.addAttribute("getIngredientSearchList", getIngredientSearchList);
		
		return modelMap;

	}
	//성분등록 작성 화면
	@RequestMapping("/ingredientRST/ingredientRegister")
	public String ingredientRegisterView(ModelMap modelMap, @ModelAttribute CodeMgtVO CodeMgtVO, HttpServletRequest request, Writer out) throws ServiceException{
		
		List<CodeMgtVO> getDangerCodeList = codeMgtService.getDangerCodeList(CodeMgtVO);
		List<CodeMgtVO> getUseCodeList = codeMgtService.getUseCodeList(CodeMgtVO);
		System.out.println("getDangerCodeList : " + getDangerCodeList.size());
		System.out.println("getUseCodeList : " + getUseCodeList.size());
		
		modelMap.addAttribute("getDangerCodeList", getDangerCodeList);
		modelMap.addAttribute("getUseCodeList", getUseCodeList);

		return "/ingredientRST/ingredientRegister";
	}
	
	@RequestMapping("/ingredientRST/ingredientRegisterAction")
	 public String ingredientRegisterAction(ModelMap modelMap, @ModelAttribute IngredientRSTVO ingredientRSTVO, HttpServletRequest request, Writer out) throws ServiceException{

			
		
		try{			
			ingredientRSTService.ingredientInsert(ingredientRSTVO);
			
			return "redirect:/ingredientRST/ingredientInquiry";
				
		}catch (Exception e) {
            if (logger.isErrorEnabled()) {
                logger.error(e.getMessage(), e);
            }
        }
		
			
		return null;
			
	}
	
}