package com.owth.common;

import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.kpu.jung.framework.exception.ApplicationException;


public class RtnMessageUtil {

	private static RtnMessageUtil rtnMessageUtil = null;
	private HttpSession session = null;
	protected Log logger = LogFactory.getLog(this.getClass());
	public static synchronized RtnMessageUtil getInstance() {
		if(rtnMessageUtil == null){
			rtnMessageUtil = new RtnMessageUtil();
		}
		return rtnMessageUtil;
	}	
	
	/**
	 * Redirect
	 * 
	 * @return String 
	 */	
	public String getRedirectUrl(String Url){
		logger.debug("\n RtnMessageUtil getRedirectUrl ========================================= \n ");
		StringBuffer scriptStr = new StringBuffer();
		scriptStr.append("<script type=text/javascript>");
		scriptStr.append("top.location.href='"+ Url +"';");			
		scriptStr.append("</script>");
		return scriptStr.toString();
	}

	/**
	 * 관리자 로그인 세션 확인 메시지
	 * 
	 * @return String 
	 */	
	public String getLogoutMessage(){
		StringBuffer scriptStr = new StringBuffer();
		scriptStr.append("<script type=text/javascript>");
		scriptStr.append("alert('Session Out! login please!');");
		scriptStr.append("top.location.href='/admin/sitemanager/loginForm.do';");			
		scriptStr.append("</script>");
		return scriptStr.toString();
	}
	
	public void returnResult(String rtnCode, String rtnMsg, String methodName, Writer out){
		
		StringBuffer jsonStr = new StringBuffer();
		jsonStr.append("{");
		jsonStr.append("\"returnCode\":\"").append(rtnCode).append("\", \"msg\": \"").append(rtnMsg).append("\"");
		jsonStr.append("}");
		
		try {
			out.write(jsonStr.toString());
        } catch (IOException e) {
            throw new ApplicationException("io.StreamError", e);
        }			
	}	
	
	/**
	 * Return result.
	 * 
	 * @param msg the msg
	 * @param url the url
	 * @param map the map
	 * 
	 * @return the string
	 */
	public String returnResult(String msg, String url, Map<String,String> map){

		StringBuffer scriptStr = new StringBuffer();
		scriptStr.append("<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'>");
		scriptStr.append("<script type='text/javascript'>");
		scriptStr.append("	function goSuccessPage(form){");
		scriptStr.append("		alert('"+msg+"');");
		if(url.equals("close")){
			scriptStr.append("	window.close();");
		}else{
			scriptStr.append("	form.submit();");
		}
		scriptStr.append("	}");
		scriptStr.append("</script>");
		scriptStr.append("</head><body onload='goSuccessPage(iform)'>");
		
		
		scriptStr.append("<form id='iform' name='iform' method='post' action='"+url+"'>");
		
		Iterator entrys = map.entrySet().iterator();
		while(entrys.hasNext()){
			Map.Entry mEntry = (Map.Entry)entrys.next();
			scriptStr.append("<input type=hidden name='"+mEntry.getKey()+"' value='"+mEntry.getValue()+"'>");		
		}
		
		scriptStr.append("</form>");
		scriptStr.append("</body></html>");

		return scriptStr.toString();

	}	
	
	
	/**
	 * 사이트 도메인 구하기.
	 * 
	 * @param request the request
	 * 
	 * @return the site domain
	 */
	public String getSiteDomain(HttpServletRequest request){
		
		String siteDomain = request.getServerName();
		int sitePort = request.getServerPort();
		
      	if(sitePort != 80){
      		if(siteDomain.equals("localhost")){
      			siteDomain = "http://" + siteDomain + ":7001";
      		}else{
      			siteDomain = "http://" + siteDomain + ":" + request.getServerPort();
      		}
      	}else{
      		siteDomain = "http://" + siteDomain;
      	}
      	
      	return siteDomain;
      	
	}
}
