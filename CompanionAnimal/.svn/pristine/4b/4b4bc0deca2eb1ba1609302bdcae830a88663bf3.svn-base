package com.owth;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kpu.jung.framework.exception.ApplicationException;

/**
 * The Class AdmLoginController.
 * 관리자 로그인 처리
 * 
 * @author JaeHun Jung
 * @version 1.0
 */
@Controller
public class adminController {
	
	/** The logger. */
	protected Log logger = LogFactory.getLog(this.getClass());
	
    /**
	 * Instantiates a new controller.
	 */
	public adminController() {
		if (logger.isDebugEnabled()) {
			logger.debug("AdminController instance 생성");
		}
	}		
	
	@RequestMapping("/adminMain")
	public String loginForm(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response){
		return "/frameLayout";
	}
	
/*	
	@RequestMapping("/web/adminLoginProc")
	public String loginProc(ModelMap modelMap, @ModelAttribute MemberInfoVO paramVO, HttpServletRequest request, Writer out){
		admLoginUtil= AdmLoginUtils.getInstance();
        MemberLoginVO dbUser = userService.getWebLoginProc(paramVO);

		String strDomain = "http://"+request.getServerName();
        
		StringBuffer scriptStr = new StringBuffer();
		scriptStr.append("<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'></head><body>");
		
		if(dbUser != null){
			userService.getLogger(paramVO);
			
			session = request.getSession();

			// 기본정보 세션에 담기
			session.setAttribute("LOGID", dbUser.getId());
			session.setAttribute("LOGNAME", dbUser.getName());
			//session.setMaxInactiveInterval(60*30);  // 30 분 유지
			
			// update admin info
//			dbUser.setLastIp(request.getRemoteAddr());
//			userService.modifyLogInfo(dbUser);
			
			scriptStr.append("<script type=text/javascript>");
			scriptStr.append("alert('로그인 되었습니다.');");
			scriptStr.append("location.href='"+strDomain+"/web/adm/adminFrame';");
			scriptStr.append("</script>");			
			
		}else{			
			scriptStr.append("<script type=text/javascript>");
			scriptStr.append("alert('아이디 혹은 비밀번호를 확인해 주세요.');");
			scriptStr.append("location.href='"+strDomain+"/web/adminMain';");
			scriptStr.append("</script>");				
		}			
		scriptStr.append("</body>");
		try{
			out.write(scriptStr.toString());				
		}catch(IOException e) {
            if (logger.isErrorEnabled()) {
                logger.error(e.getMessage(), e);
            }
            throw new ApplicationException("io.StreamError", e);
		}			
		return null;
	}
	
	@RequestMapping("/web/adminLogoutProc")
	public String logOut(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response, Writer out){
		response.addHeader("Pragma", "No-cache");
		response.addHeader("Cache-Control", "No-cache");
		response.addDateHeader("Expires",1);
		request.getSession().invalidate();
		
		StringBuffer scriptStr = new StringBuffer();
		scriptStr.append("<script type=text/javascript>");
		scriptStr.append("top.location.href='/web/admMain';");			
		scriptStr.append("</script>");
		
		try{
			out.write(scriptStr.toString());				
		}catch(IOException e) {
            if (logger.isErrorEnabled()) {
                logger.error(e.getMessage(), e);
            }
            throw new ApplicationException("io.StreamError", e);
		}				
		return null;
	}
	
	@RequestMapping("/web/adm/adminFrame")
	public String adminFrame(ModelMap modelMap, @ModelAttribute MemberLoginVO paramVO, HttpServletRequest request){
		return "/web/adm/frameLayout";
	}
*/
	
}
