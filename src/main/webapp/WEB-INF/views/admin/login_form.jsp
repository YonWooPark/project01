<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous">
</script>
<link href="${path}/resources/css/login_form.css" rel="stylesheet">
<script src="${path}/resources/js/login_form.js"></script>
</head>
<body>
	<h2>Log In</h2>
	<form action="<c:url value='/admin/loginConfirm'></c:url>"
		method="post" name="login_form">
		<input type= "text" name="a_id" id="a_id" placeholder="Input Admin ID"/><br>
		<input type= "password" name="a_pw" id="a_pw" placeholder="Input Admin PW"/><br>
		<input type= "button" value="login" id="btn_login"/> <br>
		<input type= "reset" value="reset" /><br>
	</form>
</body>
</html>