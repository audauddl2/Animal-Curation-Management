<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/views/resources/css/common.css"> 
<link rel="stylesheet" type="text/css" href="/views/resources/css/header.css">
<link rel="stylesheet" type="text/css" href="/views/resources/css/nav.css"> 
<link rel="stylesheet" type="text/css" href="/views/resources/css/contents.css">

<!-- JS -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>


<script>
	function openTab(evt, name) {
	    var i, tabcontent, tablinks;
	    tabcontent = document.getElementsByClassName("tabcontent");
	    for (i = 0; i < tabcontent.length; i++) {
	        tabcontent[i].style.display = "none";
	    }
	    tablinks = document.getElementsByClassName("tablinks");
	    for (i = 0; i < tablinks.length; i++) {
	        tablinks[i].className = tablinks[i].className.replace(" active", "");
	    }
	    document.getElementById(name).style.display = "block";
	    evt.currentTarget.className += " active";
	}	
	
	function openForm() {
	    document.getElementById("myForm1").style.display = "block";
	    document.getElementById("myForm2").style.display = "block";
	}

	function closeForm() {
	    document.getElementById("myForm1").style.display = "none";
	    document.getElementById("myForm2").style.display = "none";
	}
</script>

<style>
	/* tab Action 영역*/
	.tab {overflow: hidden; background-color: #E6E7E8;}	
	.tab button {background-color: inherit; font-weight:bold; float: left; cursor: pointer; padding: 14px 16px; transition: 0.3s; font-size:17px;}
	.tab button:hover {color:#fff; background-color: #ec6a6a;}
	
	.tab button.active {color:#fff;background-color: #ec6a6a;}
	.tabcontent {display: none;}	
		
	/* popup 영역*/
	/* Button used to ppen the contact form - fixed at the bottom of the page */
	.open-button {
		background-color: #555;
		color: white;
		padding: 16px 20px;
		border: none;
		cursor: pointer;
		opacity: 0.8;
		position: fixed;
		bottom: 23px;
		right: 28px;
		width: 280px;
	}
	
	/* The popup form - hidden by default */
	.form-popup {
		display: none;
		position: fixed;
		bottom: 0;
		right: 15px;
		border: 3px solid #f1f1f1;
		z-index: 9;
	}
	
	/* Add styles to the form container */
	.form-container {
		max-width: 1000px;
		padding: 10px;
		box-sizing: border-box;
		background-color: white;
	}
	
	/* Full-width input fields */
	.form-container input[type=text] {
		width: 200px;
		box-sizing: border-box;
		padding: 15px;
		margin: 5px 0 22px 0;
		border: none;
		background: #f1f1f1;
	}
	
	/* When the inputs get focus, do something */
	.form-container input[type=text]:focus {
		background-color: #ddd;
		outline: none;
	}
	
	/* Set a style for the submit/login button */
	.form-container .btn {
		background-color: #4CAF50;
		color: white;
		padding: 16px 20px;
		border: none;
		cursor: pointer;
		margin-bottom:10px;
		opacity: 0.8;
	}
	
	/* Add a red background color to the cancel button */
	.form-container .cancel {
		background-color: red;
	}
	
	/* Add some hover effects to buttons */
	.form-container .btn:hover, .open-button:hover {
		opacity: 1;
	}
</style>


</head>
<body>
	<div class="Wrap">
		<div class="InnerWrap">
			<!-- 내용 -->
			<div class="Content">
				<div class="InnerContent">
					<div class="tab">
					  <button class="tablinks active" onclick="openTab(event, 'tab1')">브랜드 관리</button>
					  <button class="tablinks" onclick="openTab(event, 'tab2')">분류 관리</button>
					  <hr style="clear:both;">
					</div>
					
					<div class="InnerTable2">
						<div id="tab1" class="tabcontent" style="display:block;">
							<table style="width:100%; cellspacing:0;">
					   			<thead style="color:#666; text-align:center;">
					   				<tr>
					   					<th>번호</th>
								        <th>브랜드</th>
								        <th>등록수</th>
								        <th>제품명</th>
								        <th>분류</th>
							        </tr>
						        </thead>
						         
						        <tbody style="color:#666; text-align:center;">
									 <c:choose>
			                			<c:when test="${fn:length(getDangerCodeCntList) > 0}" > 	        	
						        			<c:forEach items="${getDangerCodeCntList}" var="getList" varStatus="status">
					        					<tr>
									        		<td>${status.count}</td>
									        		<td>${getList.ingredientDanger}</td>
									        		<td>${getList.dangerCnt}</td>
									        	</tr>						        		
						        			</c:forEach>
						        		</c:when>
						        		<c:otherwise>
							                <tr>
							                    <td colspan="4">조회된 결과가 없습니다.</td>
							                </tr>
							            </c:otherwise>
						        	</c:choose>	
						        </tbody>
						        
						    </table>
						    
							<div style="text-align:center; margin:10px 15px 0 0;">
								<button class="open-button" onclick="openForm()">브랜드 변경</button>
								
								<div class="form-popup" id="myForm1">
									<div class="form-container">
										<h1>브랜드 수정 / 삭제 / 추가</h1>
										 
										<c:choose>
				                			<c:when test="${fn:length(getDangerCodeCntList) > 0}" > 	        	
							        			<c:forEach items="${getDangerCodeCntList}" var="getList" varStatus="status">
						        					
										        		<p>${status.count}. ${getList.ingredientDanger}</p>
										        		<p>브랜드 등록 수 : ${getList.dangerCnt}</p>
										        		<input type="text" placeholder="수정할 위험도 이름을 쓰시오" name="dangerName">										        		
										        		<button class="btn" onclick="/codeManagement/dangerCodeUpdateAction?dangerIDX=${getList.dangerIDX}">수정</button>
									   					<button class="btn cancel" onclick="/codeManagement/dangerCodeDeleteAction?dangerIDX=${getList.dangerIDX}">삭제</button>
										        						        		
							        			</c:forEach>
							        		</c:when>
						        		</c:choose>
						        		 
						        		<p>브랜드 추가</p>
						        		<input type="text" placeholder="추가할 브랜드 이름을 쓰시오" name="dangerName" style="width:275px;">	
						        		<button type="submit" class="btn" onclick="/codeWrite" >추가</button>
									    <button class="btn cancel" onclick="closeForm()" style="width:100%;" >Close</button>
									</div>
								</div>
								
							</div>
							
							
							
						</div>
						
						<div id="tab2" class="tabcontent">
							<table style="width:100%; cellspacing:0;">
					   			<thead style="color:#666; text-align:center;">
					   				<tr>		
					   					<th>번호</th>			   					
								        <th>대 분류</th>
								        <th>소 분류</th>
								        <th>등록수</th>
							        </tr>
						        </thead>
						        <tbody style="color:#666; text-align:center;"> 
						        	<c:choose>
			                			<c:when test="${fn:length(getUseCodeCntList) > 0}" > 	        	
						        			<c:forEach items="${getUseCodeCntList}" var="getList" varStatus="status">
					        					<tr>
									        		<td>${status.count}</td>
									        		<td>${getList.ingredientUse}</td>
									        		<td>${getList.useCnt}</td>
									        	</tr>						        		
						        			</c:forEach>
						        		</c:when>
						        		<c:otherwise>
							                <tr>
							                    <td colspan="4">조회된 결과가 없습니다.</td>
							                </tr>
							            </c:otherwise>
						        	</c:choose>
						        </tbody>
						    </table>
						    <div style="text-align:center; margin:10px 15px 0 0;">
								<button class="open-button" onclick="openForm()">분류 변경/추가</button>
								
								<div class="form-popup" id="myForm2">
									<div action="" class="form-container">
										<h1>분류 수정 / 삭제 / 추가</h1> 
										<c:choose>
				                			<c:when test="${fn:length(getUseCodeCntList) > 0}" > 	        	
							        			<c:forEach items="${getUseCodeCntList}" var="getList" varStatus="status">
						        					
										        		<p></p>
										        		
										        		<p>${status.count}. ${getList.ingredientUse}</p>
										        		<input type="text" placeholder="수정할 위험도 이름을 쓰시오" name="dangerName">										        		
										        		<button class="btn" onclick="/dangerCodeUpdate?dangerIDX=${getList.dangerIDX}">수정</button>
									   					<button class="btn cancel" onclick="/dangerCodeDelete?dangerIDX=${getList.dangerIDX}">삭제</button>
										        					        		
							        			</c:forEach>
							        		</c:when>
						        		</c:choose>		
						        		<p>분류 추가</p>
									    	<div style="margin:10px">
										    	<table>
											    	<tr>
											    		<th>대분류를 선택해주세요</th>
											                <td>
																<input type="checkbox" id="cb" name="cb" value=""> 용도&nbsp;&nbsp;&nbsp;&nbsp;
																<input type="checkbox" id="cb" name="cb" value=""> 원료&nbsp;&nbsp;&nbsp;&nbsp;
																<input type="checkbox" id="cb" name="cb" value=""> 기능&nbsp;&nbsp;&nbsp;&nbsp;
																<input type="checkbox" id="cb" name="cb" value=""> 종류&nbsp;&nbsp;&nbsp;&nbsp;
											                </td>
													</tr>
											    	<tr>
														<th>소분류를 선택해주세요</th>
											           		<td>
											            		<input type="text" name="sc" id="sc" placeholder=" 내용을 입력하세요" maxlength="50" style="width: 600px;">
											            	</td>
													</tr>
											    	<tr>
											    		<th>사용자 화면에 구성될 버튼 이미지를 업로드 해주세요</th>
											            	<td>
											             		<input type="file" name="file">
															</td>
													</tr>
												</table>
									    	</div>
									    
						        		<button type="submit" class="btn" onclick="/codeManagement/dangerCodeInsertAction" >추가</button>
									    <button class="btn cancel" onclick="closeForm()" style="width:100%;" >Close</button>
									</div>
								</div>
								
							</div>						    
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

</body>
</html>