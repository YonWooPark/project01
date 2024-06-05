<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="./nav.jsp"></jsp:include>
	<h2>MODIFY ACCOUNT FORM</h2>
	<form action="<c:url value='/admin/modifyAccountForm'></c:url>"
		name="modifyAccountConfirm" method="post">
		<input type= "hidden" name="a_id" value="${adminLoginedDto.a_id}" /><br>
		<input type= "text" name="a_id" value="${adminLoginedDto.a_id}"  readonly disabled/><br>
		<input type= "text" name="a_pw"  value="*****"  readonly disabled/><br>
		<input type= "text" name="a_name"  value="${adminLoginedDto.a_name}"/><br>
		<input type= "text" name="a_phone"  value="${adminLoginedDto.a_phone}"/><br>
		<input type= "submit" value="modify account"/> <br>
		<input type= "reset" value="reset" /><br>
	</form>
</body>
</html>