<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<p class="paging">
    <c:choose>
        <c:when test="${pager.currentPageNo != 1}">
            <a href="#href" onClick="javascript:gotoPage(1)" class="pagea" title="처음으로"><span>처음으로</span></a><a href="javascript:gotoPage(${pager.currentPageNo - 1})" class="pagea prev" title="이전"><span>이전</span></a>
        </c:when>
        <c:otherwise>
            <a href="#href" onClick="javascript:alert('처음페이지 입니다.')" class="pagea" title="처음으로"><span>처음으로</span></a>
            <a href="#href" onClick="javascript:alert('처음페이지 블록 입니다.')" class="pagea prev" title="이전"><span>이전</span></a>    
        </c:otherwise>
    </c:choose>
    <c:set var="blockSep" value=" | " />
    <fmt:parseNumber var="currentSector" integerOnly="true" value="${pager.currentPageNo/pager.blockPerPage}" />
    <fmt:parseNumber var="totalSector" integerOnly="true" value="${pager.totalPage/pager.blockPerPage}" />

    <fmt:parseNumber var="tmpCurrentSector" integerOnly="true" value="${pager.currentPageNo%pager.blockPerPage}" />
    <fmt:parseNumber var="tmpTotalSector" integerOnly="true" value="${pager.totalPage%pager.blockPerPage}" />

    <c:if test="${tmpCurrentSector > 0}">
        <c:set var="currentSector" value="${currentSector+1}" />
    </c:if>

    <c:if test="${tmpTotalSector > 0}" >
        <c:set var="totalSector" value="${totalSector+1}" />
    </c:if>

    <c:forEach begin="${pager.startPageNum}" end="${pager.lastColumn}" step="1" var="pageNum">
        <c:choose>
            <c:when test="${pageNum == pager.currentPageNo}">
                <span class="select">${pageNum}</span>
            </c:when>
            <c:otherwise>
                <a href="#href" onClick="javascript:gotoPage(${pageNum})">${pageNum}</a>
            </c:otherwise>
        </c:choose>
        <c:if test="${pageNum < pager.lastColumn}">
        ${blockSep}
        </c:if>
    </c:forEach>

    <c:choose>
        <c:when test="${tmpCurrentSector < tmpTotalSector}">
            <a href="#href" onClick="javascript:gotoPage(${pager.currentPageNo + 1})" class="pagea next" title="다음"><span>다음</span></a>            
        </c:when>
        <c:otherwise>
            <a href="#href" onClick="javascript:alert('다음페이지 블록이 없습니다.')" class="pagea next" title="다음"><span>다음</span></a>
        </c:otherwise>
    </c:choose>
    <c:choose>
        <c:when test="${pager.currentPageNo == pager.totalPage}">
            <a href="#href" onClick="javascript:alert('마지막 페이지 입니다.')" class="pagea last" title="끝으로"><span>끝으로</span></a></li>
        </c:when>
        <c:otherwise>
            <a href="#href" onClick="javascript:gotoPage(${pager.totalPage})" class="pagea last" title="끝으로"><span>끝으로</span></a>
        </c:otherwise>
    </c:choose>

</p>