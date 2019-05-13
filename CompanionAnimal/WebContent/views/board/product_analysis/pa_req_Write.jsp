<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post" enctype="multipart/form-data">
		<div>
		<div>카테고리</div>
			<div>
				<select name="category">
					<!-- code관리 에서 뽑아오는 부분 -->
				</select>
			</div>
		</div>
		
		<div>
		<div>브랜드</div>
			<div>
				<input type="text" name="brandName" placeholder="브랜드명을 입력해 주세요"/>
			</div>
		
		</div>
		
		<div>
			<div>제품</div>
				<div>
					<input type="text" name="productName" placeholder="제품명을 입력해 주세요"/>
				</div>
		
		</div>
		
		<div>
			<div>사진업로드</div>
				<div>
					<input type="file"/>
				</div>
		</div>
	</form>
</body>
</html>