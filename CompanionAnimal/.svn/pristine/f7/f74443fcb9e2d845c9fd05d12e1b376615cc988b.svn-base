package com.owth;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kpu.jung.framework.exception.ApplicationException;
import com.owth.common.PageUtil;
import com.owth.common.RtnMessageUtil;


// 반드시 확인 
@Controller
public class MainController {     
	/** The logger. */
	protected Log logger = LogFactory.getLog(this.getClass());
	
	/** Common Object. */
	PageUtil pageUtil = null;
	
	/** Object. */
	private RtnMessageUtil rtnMessageUtil = new RtnMessageUtil();

	@RequestMapping("/")
	public String loginProc(ModelMap modelMap, HttpServletRequest request, Writer out){
		
		System.out.println("owth Main Start ====================================================");

		String strDomain = "http://"+request.getServerName();
        
		StringBuffer scriptStr = new StringBuffer();
		scriptStr.append("<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'></head><body>");

		
		Device currentDevice = DeviceUtils.getCurrentDevice(request);
		
		// 모바일 -> PC화면 전환 구분자
		String crDevice = "";
		String deviceP = (String) request.getSession().getAttribute("deviceP");
		String deviceM = request.getParameter("device");

		if(logger.isDebugEnabled()) {
			logger.debug("::::::::::::::::::::::::::: 브라우저 (true -모바일): " + currentDevice.isMobile());
			logger.debug("::::::::::::::::::::::::::: 모바일  > PC? : " + deviceM);
			logger.debug("::::::::::::::::::::::::::: 모바일 브라우저? : " + deviceP);
//			logger.debug("::::::::::::::::::::::::::: 도메인 : " + pageUtil.getSiteDomain(request));
			logger.debug("::::::::::::::::::::::::::: 도메인 : " + strDomain);
		}
		
		// 모바일 브라우저일 경우
		if (currentDevice.isMobile()) {
			crDevice = "mobile";
			
			// 모바일 브라우저에서 PC버전 보기 일 경우
			if (deviceM != null || deviceP != null) {
				request.getSession().setAttribute("deviceP", "mobile");
				modelMap.addAttribute("crDevice", crDevice);
				modelMap.addAttribute("mobilePortalHomeUrl", "/mobile/mIndex");
//				goUrl = "/web/adminMain";

				scriptStr.append("<script type=text/javascript>");
				scriptStr.append("location.href='/web/adminMain';");
				scriptStr.append("</script>");			
				
			// 모바일로 이동
			}else {
				
				scriptStr.append("<script type=text/javascript>");
				scriptStr.append("location.href='/mobile/mIndex';");
				scriptStr.append("</script>");			
//				try {
//					logger.debug("\n 8 \n");
//					response.sendRedirect("/mobile/mMain");
//				} catch (IOException e) {
//					e.printStackTrace();
//				}

			}	// end device
			
		} else { // end currentDevice.isMobile()
			scriptStr.append("<script type=text/javascript>");
			scriptStr.append("location.href='/adminMain';");
			scriptStr.append("</script>");			

//			rtnMessageUtil.getRedirectUrl("/web/adminMain");
			
//			try{
//				logger.debug("\n 10 \n");
//				response.sendRedirect(goUrl);
//				response.sendRedirect("/web/adminMain");
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
		}

		scriptStr.append("</body>");
		scriptStr.append("</html>");

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
	
}