package com.owth.common;

import java.io.IOException;
import java.io.Writer;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.ui.ModelMap;


public class PageUtil {
	
	
	/** The logger. */
	protected Log logger = LogFactory.getLog(this.getClass());
	
	/** The page util. */
	private static PageUtil pageUtil = null;
	
	/** The Constant MODE01. */
	final public static String MODE01 = "CEO_MASTER";			// 관리자 접근 가능
	
	/** The Constant MODE02. */
	final public static String MODE02 = "LOGIN_USER";			// 비회원, 준회원 을 제외한 로그인한 모든 회원
	
	/** The Constant MODE109. */
	final public static String MODE110 = "GENERAL";				// 일반회원
	

	/**
	 * Gets the single instance of PageUtil.
	 * @return single instance of PageUtil
	 */
	public static synchronized PageUtil getInstance() {
		
		if(pageUtil == null){
			pageUtil = new PageUtil();
		}
		return pageUtil;
	}	
	
	/**
	 * Gets the form txt.
	 * @param request the request
	 * @return the form txt
	 */
	public Map<String,String> getFormTxt(HttpServletRequest request){	
		
		Map<String,String> paramMaps = new HashMap<String,String>();
		
		Enumeration top_ename = request.getParameterNames();
		String paramName = "";
		String paramValue = "";
		
		if(logger.isDebugEnabled()) {
			logger.debug("================================== Parameter ==================================");
			logger.debug("== URI : "+request.getRequestURI());
			logger.debug("== method : "+request.getMethod());
		}
		
		while(top_ename.hasMoreElements()){
			paramName = (String)top_ename.nextElement();
			paramValue = request.getParameter(paramName);		
			
			if(logger.isDebugEnabled()) {
				logger.debug("== "+paramName+" : "+paramValue);
			}
			
			if(paramValue.equals("[]")) {
				paramValue = paramValue.replace("[]", "");
			}
			
			paramValue = paramValue.replace("<", "&lt;");
			paramValue = paramValue.replace(">", "&gt;");
			
			paramMaps.put(paramName, paramValue);
		}
		
		if(logger.isDebugEnabled()) {
			logger.debug("===============================================================================");
		}
		
		return paramMaps;
	}
	
	/**
	 * Login을 위한 page Parameter 처리.
	 * @param modelMap the model map
	 * @param request the request
	 * @return the model map
	 */
	public ModelMap setLoginModelMap(ModelMap modelMap, HttpServletRequest request){

		/** login form parameter start */	
		modelMap.addAttribute("paramDomain",getSiteDomain(request));
		modelMap.addAttribute("paramURI",request.getRequestURI());
		modelMap.addAttribute("paramMethod",request.getMethod());
		modelMap.addAttribute("paramMaps", getFormTxt(request));
		/** login form parameter end */				

		return modelMap;
	}	
	

	/**
	 * Gets the script message.
	 * 
	 * @param message the message
	 * @param url the url
	 * @param out the out
	 * 
	 * @return the script message
	 */
	public void getScriptMessage(String message, String url, Writer out){
		
		if(logger.isDebugEnabled()) {
			logger.debug("message : "+message+"  url : "+url);
		}
		
		StringBuffer scriptStr = new StringBuffer();
		scriptStr.append("<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'></head><body>");
		scriptStr.append("<script type=text/javascript>");
		
		if(!message.equals(""))	scriptStr.append("alert('"+message+"');");
		if(!url.equals(""))	scriptStr.append("location.href='"+url+"'");	
		else scriptStr.append("history.go(-1)");
		
		scriptStr.append("</script>");
		scriptStr.append("</body></html>");
		
		
		try {
			out.write(scriptStr.toString());
        } catch (IOException e) {
//            throw new ApplicationException("io.StreamError", e);
        }		
	}

	/**
	 * Return result.
	 * 
	 * @param rtnCode the rtn code
	 * @param rtnMsg the rtn msg
	 * @param methodName the method name
	 * @param out the out
	 */
	
	public void returnResult(String rtnCode, String rtnMsg, String methodName, Writer out){
		
		StringBuffer jsonStr = new StringBuffer();
		jsonStr.append("{");			
		jsonStr.append("\"returnCode\":\"").append(rtnCode);
		jsonStr.append("\", \"msg\": \"").append(rtnMsg).append("\"");
		jsonStr.append("}");
		
		if(logger.isDebugEnabled()) {
			logger.debug("rtnCode>>>>>>>>>>>>>>>>>>>"+jsonStr.toString());
		}
		
		try {
			out.write(jsonStr.toString());
        } catch (IOException e) {
//            throw new ApplicationException("io.StreamError", e);
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
		if(!msg.equals("")){
			scriptStr.append("		alert('"+msg+"');");
		}
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
//      	if (logger.isDebugEnabled())
//      		logger.debug("siteDomain: " + siteDomain);
//      	if (logger.isDebugEnabled())
//      		logger.debug("sitePort: " + sitePort);
		
      	if(sitePort != 80){
      		if(siteDomain.equals("localhost")){
      			siteDomain = "http://" + siteDomain + ":7001";
      		}else{
      		//
      			/**
      			 * B-HUB 프로젝트
      			 * 2010.07.14 - 신성훈
      			 * 작업내용: 아파치 연동전까지 임시로 개발 포트 지정
      			 *
      			 */
      			siteDomain = "http://" + siteDomain;
//          		siteDomain = "http://" + siteDomain + ":9004";
      		}
      	}else{
      		siteDomain = "http://" + siteDomain;
      	}
//      	if (logger.isDebugEnabled())
//      		logger.debug("siteDomain: " + siteDomain);
      	return siteDomain;
      	
	}
	
	/**
	 * Return result map.
	 * 
	 * @param rtnCode the rtn code
	 * @param rtnMsg the rtn msg
	 * @param methodName the method name
	 * @param out the out
	 */
	@SuppressWarnings("unchecked")
	public void returnResultMap(Map rtnCode, String rtnMsg, String methodName, Writer out){
		
		StringBuffer jsonStr = new StringBuffer();
		
		Iterator it = rtnCode.keySet().iterator();
		
		jsonStr.append("{");	
		while (it.hasNext()) {
			
			String key = (String)it.next();
		    jsonStr.append("\""+key+"\":\"");
		    if(rtnCode.get(key) == null){
		    	jsonStr.append("");
		    }else{
		    	/*TEXTAREA의 ENTEㅓR KEY오류로 인한 변경 추가*/
		        jsonStr.append(replace(rtnCode.get(key).toString(), "\r\n", "<BR>"));
		    }
		    jsonStr.append("\",");    
		}
	
		jsonStr.append("\"msg\": \"").append(rtnMsg).append("\"");
		jsonStr.append("}");
		
		//System.out.println("jsonStr>>>>>>>>>>>>>>>>>>>>>>>>>"+jsonStr.toString());
		try {
			out.write(jsonStr.toString());
        } catch (IOException e) {
//        	throw new ApplicationException("io.StreamError", e);
        }			
	}
	
	/**
	 * 문자열 태그 필터링 - 게시판 입력시 제목 등에 사용.
	 * 
	 * @param txt the txt
	 * 
	 * @return the string
	 */
	public String filterTags(String txt){
		if(txt == null) txt = "";
		else{
			txt = txt.replaceAll("<", "&lt;");
			txt = txt.replaceAll(">", "&gt;");
			txt = txt.replaceAll("\"", "'");
		}
		
		return txt;
	}
	
	/**
	 * 문자열 스크립트 필터링 - 게시판 입력시 본문에 사용.
	 * 
	 * @param txt the txt
	 * 
	 * @return the string
	 */
	public String filterScripts(String txt){
		if(txt == null) txt = "";
		else{
			txt = txt.replaceAll("(?i)<script", "<xscript");
			txt = txt.replaceAll("(?i)<iframe", "");
			txt = txt.replaceAll("(?i)javascript:", "java&nbsp;script:");
			txt = txt.replaceAll("(?i)vbscript:", "vb&nbsp;script:");
			txt = txt.replaceAll("(?i)<object", "");
			txt = txt.replaceAll("(?i)<applet", "");
			txt = txt.replaceAll("(?i)<embed", "");
			txt = txt.replaceAll("(?i)<form", "");
			txt = txt.replaceAll("(?i)onabort", "on&nbsp;abort");
			txt = txt.replaceAll("(?i)onblur", "on&nbsp;blur");
			txt = txt.replaceAll("(?i)onchange", "on&nbsp;change");
			txt = txt.replaceAll("(?i)onclick", "on&nbsp;click");
			txt = txt.replaceAll("(?i)onerror", "on&nbsp;error");
			txt = txt.replaceAll("(?i)onfocus", "on&nbsp;focus");
			txt = txt.replaceAll("(?i)onkeydown", "on&nbsp;keydown");
			txt = txt.replaceAll("(?i)onkeypress", "on&nbsp;keypress");
			txt = txt.replaceAll("(?i)onkeyup", "on&nbsp;keyup");
			txt = txt.replaceAll("(?i)onmousedown", "on&nbsp;mousedown");
			txt = txt.replaceAll("(?i)onmousemove", "on&nbsp;mousemove");
			txt = txt.replaceAll("(?i)onmouseup", "on&nbsp;mouseup");
			txt = txt.replaceAll("(?i)onmouseover", "on&nbsp;mouseover");
			txt = txt.replaceAll("(?i)onmouseout", "on&nbsp;mouseout");
			txt = txt.replaceAll("(?i)onload", "on&nbsp;load");
			txt = txt.replaceAll("(?i)onreset", "on&nbsp;reset");
			txt = txt.replaceAll("(?i)onresize", "on&nbsp;resize");
			txt = txt.replaceAll("(?i)onselect", "on&nbsp;select");
			txt = txt.replaceAll("(?i)onsubmit", "on&nbsp;submit");
			txt = txt.replaceAll("(?i)onunload", "on&nbsp;unload");
		}
		
		return txt;
	}
		
	/**
	 * Replace.
	 * 
	 * @param line the line
	 * @param oldString the old string
	 * @param newString the new string
	 * 
	 * @return the string
	 */
	public String replace(String line, String oldString, String newString){
		   for(int index = 0; (index = line.indexOf(oldString, index)) >= 0; index += newString.length())
		       line = line.substring(0, index) + newString + line.substring(index + oldString.length());
		   return line;
	}	
	
	
	/**
	 * 리턴 페이지
	 * @param msg
	 * @param url
	 * @return
	 */
	public String returnPage(String msg, String url) {
		
		StringBuffer scriptStr = new StringBuffer();
		scriptStr.append("<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'>");
		scriptStr.append("<script type='text/javascript'>");
		if(!msg.equals("")){
			scriptStr.append("alert('"+msg+"');");
		}
		scriptStr.append("location.replace('" + url + "');");
		scriptStr.append("</script>");
		scriptStr.append("</head></html>");

		return scriptStr.toString();
	}	
	
	/**
	 * 팝업 - 페이지 닫고, url로 이동
	 * @param message
	 * @param url
	 * @param out
	 */
	public void getPopupMessage(String msg, String url, Writer out) {
		
		StringBuffer scriptStr = new StringBuffer();
		scriptStr.append("<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'>");
		scriptStr.append("<script type=text/javascript>");
		
		if(!msg.equals(""))	{ 
			scriptStr.append("alert('"+msg+"');");
		}
		
		scriptStr.append("opener.location.replace('" + url + "');");
		scriptStr.append("self.close();");
		scriptStr.append("</script>");
		scriptStr.append("</head></html>");
		
		
		try {
			out.write(scriptStr.toString());
        } catch (IOException e) {
//            throw new ApplicationException("io.StreamError", e);
        }		
	}
	
	/**
	 * page 접근 권한 확인 처리.
	 * @param user the user
	 * @param mode the mode
	 * @return the string
	 */	
	/*
	public String chkPageAuth(MemberLoginVO user, String mode) {
		
		// 접근 권한 OK
		String errorCode = "C000";		
		
		// 로그인 필요이 필요한 페이지 입니다.
		if(user == null){			
			return "C999";	
		
		// 로그인 필요이 필요한 페이지 입니다.
		}else {
			if(user.getId().equals("")) return "C999";	
		}
		
		// 로그인한 회원은 모두 가능 
		if(mode.equals(MODE110)) {}
		
		
		return errorCode;
	}
	*/
	
	
	/**
	 * Gets the error message.
	 * 
	 * @param code the code
	 * 
	 * @return the error message
	 */
	public String getErrorMessage(String code){
		
		String errorMessage = "";
		
		if(logger.isDebugEnabled()) {
			logger.debug("code : "+code);
		}
		
		if(code.equals("C999")) errorMessage = "로그인 필요한 페이지 입니다.";
		if(code.equals("C502")) errorMessage = "정회원만 접근 가능한 페이지 입니다.";		
		if(code.equals("C506")) errorMessage = "개인 회원만이 접근 가능합니다..";
		if(code.equals("C507")) errorMessage = "비즈 회원만이 접근 가능합니다..";
		if(code.equals("C001")) errorMessage = "이미 로그인이 되었습니다.";
		if(code.equals("C511")) errorMessage = "개인전환 대기 회원은 접근 할수 없습니다.";
		if(code.equals("C514")) errorMessage = "승인요청 중인 회원은 접근 할수 없습니다.";
		if(code.equals("C505")) errorMessage = "비즈관리자 회원만 접근이 가능합니다.";				
		if(code.equals("C512")) errorMessage = "비즈관리자 회원은 권한 변경을 할 수 없습니다.";	
		
		//if(code.equals("C501")) errorMessage = "비즈관리자 또는 비즈CEO 회원만 접근 가능합니다.";
		//if(code.equals("C503")) errorMessage = "상품 구매 회원만이 접근 가능한 페이지 입니다.";
		//if(code.equals("C504")) errorMessage = "제휴사 상담원 및 사업자 회원만이 접근 가능합니다.";
		//if(code.equals("C508")) errorMessage = "비즈CEO 회원으로 가입하시면 보실 수 있습니다.";
		//if(code.equals("C509")) errorMessage = "유통망 회원만 접근 가능한 페이지 입니다.";
		//if(code.equals("C510")) errorMessage = "제휴사 책임상담원 및 상담원만 접근 가능한 페이지 입니다.";
		//if(code.equals("C513")) errorMessage = "개인CEO 회원은 권한 변경을 할 수 없습니다.";
		
		if(logger.isDebugEnabled()) {
			logger.debug("errorMessage : " + errorMessage);
		}
		
		return errorMessage;		
	}
	
}
