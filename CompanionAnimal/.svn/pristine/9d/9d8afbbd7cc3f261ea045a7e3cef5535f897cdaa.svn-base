package com.owth.vo.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * <PRE>
 * Paging 결과에 대한 Value Object
 * </PRE>
 * 
 * .
 * 
 * @author JaeHun Jung
 */
public class PagingVO extends BaseVO {

    /**
	 * <pre>
	 * 조회된 결과 page number.
	 * request의 pageNo
	 * </pre>
	 */
    private Integer pageNo = 1;
    	
    /**
	 * <pre>
	 * page당 조회하고자 하는 결과의 개수.
	 * request의 perPage
	 * </pre>
	 */
    //TODO properties 정보 에서 읽어오도록 변경이 필요.
    private Integer countPerPage = 10;
    
    /**
	 * <pre>
	 * 조회 요청의 결과로 만들어지는 총 Page 개수.
	 * 
	 * <pre>
	 */
    private String totalPageCount;
    	
    /**
	 * <pre>
	 * get list request의 결과 총 개수.
	 * 
	 * <pre>
	 */
    private String totalCount;
    
    /**
	 * The paging yn.
	 */
    private String pagingYn = "N";

    /**
	 * <pre>
	 * 조회된 결과 page number.
	 * request의 pageNo
	 * </pre>
	 */
    private Integer startPageNo = 0;
    
    /*
     * TODO Paging Helper 미구현으로 현재는 무조건 paging하지 않도록 되어있음.
     * Paging Helper 구현 후 변경이 필요함.
     */

	/**
	 * Gets the page Number.
	 * 
	 * @return the page no
	 */
	public Integer getPageNo() {
		return pageNo;
	}

	/**
	 * Sets the page Number.
	 * 
	 * @param pageNo
	 *            the new page no
	 */
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	/**
	 * Gets the count per page.
	 * 
	 * @return the count per page
	 */
	public Integer getCountPerPage() {
		return countPerPage;
	}

	/**
	 * Sets the count per page.
	 * 
	 * @param countPerPage
	 *            the new count per page
	 */
	public void setCountPerPage(Integer countPerPage) {
		this.countPerPage = countPerPage;
	}

	/**
	 * Gets the total page count.
	 * 
	 * @return the total page count
	 */
	public String getTotalPageCount() {
		return totalPageCount;
	}

	/**
	 * Sets the total page count.
	 * 
	 * @param totalPageCount
	 *            the new total page count
	 */
	public void setTotalPageCount(String totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	/**
	 * Gets the total count.
	 * 
	 * @return the total count
	 */
	public String getTotalCount() {
		return totalCount;
	}	
	
	/**
	 * Gets the paging yn.
	 * 
	 * @return the paging yn
	 */
	public String getPagingYn() {
		return pagingYn;
	}

	/**
	 * Sets the paging yn.
	 * 
	 * @param pagingYn
	 *            the new paging yn
	 */
	public void setPagingYn(String pagingYn) {
		this.pagingYn = pagingYn;
	}

	/**
	 * Sets the total count.
	 * 
	 * @param totalCount
	 *            the new total count
	 */
	public void setTotalCount(String totalCount) {
		this.totalCount = totalCount;
	}

	/**
	 * Gets the start row.
	 * 
	 * @return the start row
	 */
	public int getStartRow() {
		return ((this.pageNo - 1) * this.countPerPage) + 1;
	}

	/**
	 * Gets the end row.
	 * 
	 * @return the end row
	 */
	public int getEndRow() {
		return this.pageNo * this.countPerPage;
	}
	

	public String chkString(String txt){
		if(txt == null) txt = "";
		return txt;
	}	
	
	public String chkInjection(String txt){
		if(txt == null) txt = "";
		else{
			txt = replace(txt, "\n\r", "<br>");
			txt = replace(txt, "%", "\\%");
			txt = replace(txt, "=", "\\=");
			txt = replace(txt, "'", "\\'");
			txt = replace(txt, ";", "\\;");
			txt = replace(txt, "--", "\\--");
			txt = replace(txt, "<", "&lt;");
			txt = replace(txt, ">", "&gt;");
		}
		
		return txt;
	}		
	
	public String replace(String line, String oldString, String newString){
		   for(int index = 0; (index = line.indexOf(oldString, index)) >= 0; index += newString.length())
		       line = line.substring(0, index) + newString + line.substring(index + oldString.length());
		   return line;
	}

	/**
	 * @return the startPageNo
	 */
	public Integer getStartPageNo() {
		return startPageNo;
	}

	/**
	 * @param startPageNo the startPageNo to set
	 */
	public void setStartPageNo(Integer startPageNo) {
		this.startPageNo = startPageNo;
	}	
	
}


