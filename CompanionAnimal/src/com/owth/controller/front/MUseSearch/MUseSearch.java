package com.owth.controller.front.MUseSearch;

import java.io.Writer;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.owth.common.RtnMessageUtil;
import com.owth.service.codeMgt.CodeMgtService;
import com.owth.service.product.ProductService;
import com.owth.vo.CodeMgt.CodeMgtVO;
import com.owth.vo.product.ProductVO;

@Controller
public class MUseSearch {

	/** The logger. */
	protected Log logger = LogFactory.getLog(this.getClass());
	
	/** Object. */
	private RtnMessageUtil rtnMessageUtil = new RtnMessageUtil();

	@Autowired
	ProductService productService;

	@RequestMapping("/MUseSearch/useSearch")
	public String MUseSearchView(@ModelAttribute ProductVO productVO, HttpServletRequest request, HttpServletResponse response) {

		
		System.out.println("MUseSearch MUSearchView Start ==================================================================");
		System.out.println("productVO : " + productVO.toString());
		System.out.println("MUseSearch MUSearchView End ==================================================================");
		
		List<ProductVO> getProductList = productService.getFProductList(productVO);
		
		
		if ( productVO.getGubunCode().equals("CS_5") ) {
			
			return "/front/MUseSearch/useSearch_1";
			
		} else if ( productVO.getGubunCode().equals("CS_6")) {

			return "/front/MUseSearch/useSearch_1";
			
		} else if ( productVO.getGubunCode().equals("CS_7")) {
	
			return "/front/MUseSearch/useSearch_1";
			
		} else if ( productVO.getGubunCode().equals("CS_8")) {
			
			return "/front/MUseSearch/useSearch_1";
			
		}
			
		return null;
	}
	
}