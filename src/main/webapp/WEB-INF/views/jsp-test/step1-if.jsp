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
<c:if test="true">
	true이므로 실행한다.
</c:if>
<br>
<hr>
Query String 방식
<br>
<a href="/step1-if?age=10&nick=팽수">step1을 다시 호출</a> <br>
나이 : ${param.age} <br>
닉네임 : ${param.nick}
<br><br>

<c:if test="${param.age  > 5 && param.nick == '팽수'}">
	나이가 5세를 초과합니다. 닉네임은 팽수입니다.
</c:if>
</body>
</html>