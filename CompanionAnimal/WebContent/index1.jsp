<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/views/resources/css/common.css"> 
<link rel="stylesheet" type="text/css" href="/views/resources/css/header.css">
<link rel="stylesheet" type="text/css" href="/views/resources/css/nav.css"> 
<link rel="stylesheet" type="text/css" href="/views/resources/css/contents.css">

<!-- JS -->
<script src="/views/resources/js/jquery-1.4.4.min.js"></script>
<script src="/views/resources/js/jquery.form.js"></script>
<script src="/views/resources/js/common/nav.js"></script>

<script type="text/javascript">

if ($('input[name=sampleCheckbox]').is(":checked")) {
	
    $('#sampleHidden').val('Y');
} else {
    $('#sampleHidden').val('N');
}
</script>

</head>
<body>
	<form action="index.jsp">
		<input type="checkbox" id="sampleCheckbox" name="sampleCheckbox" />
		<input type="hidden" id="sampleHidden" name="sampleHidden"/>
		<input type="submit" value="전송">
	</form>
</body>
</html>