<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	
    <script type="text/javascript" src="/views/resources/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="/views/resources/js/jquery.form.js"></script>
    <script type="text/javascript" src="/views/resoruces/js/common/jsutil.js"></script>
    <script type="text/javascript" src="/views/resources/js/common/common.js"></script>
    <script type="text/javascript" src="/views/resources/js/product/productWrite.js"></script>
	
</head>

<body class="bgCont">
<div id="content-container">
    <div id="content-wrap">

		<form id="frm" name="" method="post" action="">
		
		<div id="productInfo">
	        <table class="tbl02">
	            <tr>
	                <th>이미지</th>
	                <td colspan="4"><input type="file" id="productImage" name="productImage" title="제품 이미지를  선택해주세요"></td>
	            </tr>
	            <tr>
	                <th>브랜드</th>
	                <td colspan="4">
	                	<select id="productBrand" name="productBrand">
	                		<option value="">선택해주세요</option>
	                	</select>
	                </td>
	            </tr>
	            <tr>
	                <th>제품명</th>
	                <td colspan="4"><input type="text" class="ipt1 sj" id="productName" name="productName" title="제품명" value="" /></td>
	            </tr>
	            <tr>
	                <th>가격</th>
	                <td colspan="2"><input type="text" class="ipt1 sj" id="productPrice" name="productPrice" title="제품가격" value="" /></td>
	                <th>양</th>
	                <td><input type="text" class="ipt1 sj" id="productVolume" name="productVolume" title="제품양" value="" /></td>
	            </tr>
	            <tr>
	                <th rowspan="4">분류</th>
	                <td>분류</td>
	                <td>
						<input type="checkbox" id="productUse" name="productUse" value=""> 입맛용&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productUse" name="productUse" value=""> 보상용&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productUse" name="productUse" value=""> 스트레스용&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productUse" name="productUse" value=""> 치아관리용&nbsp;&nbsp;&nbsp;&nbsp;
	                </td>
	            </tr>
	            <tr>
	                <td>원료</td>
	                <td>
						<input type="checkbox" id="productMaterial" name="productMaterial" value=""> 육류-소&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productMaterial" name="productMaterial" value=""> 육류-돼지&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productMaterial" name="productMaterial" value=""> 육류-닭&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productMaterial" name="productMaterial" value=""> 육류-오리&nbsp;&nbsp;&nbsp;&nbsp;
	                </td>
	            </tr>
	            <tr>
	                <td>기능</td>
	                <td>
						<input type="checkbox" id="productFunction" name="productFunction" value=""> 피부/모질&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productFunction" name="productFunction" value=""> 뼈/관절&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productFunction" name="productFunction" value=""> 소화/장&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productFunction" name="productFunction" value=""> 눈/눈물&nbsp;&nbsp;&nbsp;&nbsp;
	                </td>
	            </tr>
	            <tr>
	                <td>종류</td>
	                <td class="last">
						<input type="checkbox" id="productKind" name="productKind" value=""> 사사미육포&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productKind" name="productKind" value=""> 건조간식&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productKind" name="productKind" value=""> 동결건조간식&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productKind" name="productKind" value=""> 처키/트릿&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productKind" name="productKind" value=""> 껌&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="productKind" name="productKind" value=""> 뼈&nbsp;&nbsp;&nbsp;&nbsp;
	                </td>
	            </tr>
	        </table>
        </div>
        
		<div id="productFeature">
	        <table class="tbl02">
	            <tr>
	                <th>딱딱함</th>
	                <td><input type="range" id="productHard" name="productHard" min="1" max="1" step="1" title="제품 특징 중 딱딱함 정도를 선택해주세요."></td>
	            </tr>
	            <tr>
	                <th>기름짐</th>
	                <td><input type="range" id="productFatty" name="productFatty" min="1" max="1" step="1" title="제품 특징 중 기름짐 정도를 선택해주세요."></td>
	            </tr>
	            <tr>
	                <th>촉촉함</th>
	                <td><input type="range" id="productMoist" name="productMoist" min="1" max="1" step="1" title="제품 특징 중 촉촉함 정도를 선택해주세요."></td>
	            </tr>
			</table>
		</div>        
<!-- 
	                    <input type="radio" name="use_YN" id="use_YN" class="radio" value="Y" ${majorDetail.use_YN eq 'Y' ? 'CHECKED' : ''} />사용 &nbsp;&nbsp;&nbsp;&nbsp;
	                    <input type="radio" name="use_YN" id="use_YN" class="radio" value="N" ${majorDetail.use_YN eq 'N' ? 'CHECKED' : ''} /> 사용안함
 -->	                    

        <div class="PagingArea">
            <div class="btnLeft">
                <span class="button"><input type="button" value="목록" id="listBtn" /></span>
            </div>
            <div class="btnRight">
                <span class="button"><input type="button" value="확인" id="saveBtn" /></span>
                <span class="button"><input type="button" value="취소" id="cancellBtn" /></span>
            </div>
        </div>
        </form>

	</div>
</div>	

</body>
</html>