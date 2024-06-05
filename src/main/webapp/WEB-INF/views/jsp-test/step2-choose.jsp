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
	EL로 name과 age를 출력<br>
	이름 : ${dto.name} <br>
	나이 : ${dto.age} <br>
	
	<hr>
	<br>
	
	JSTL 다중 조건 choose, when, otherwise
	<br>
	<c:choose>
		<c:when test="${dto.name == '아이유'}">
			아이유가 맞습니다. <br>
			나이는 ${dto.age}세 입니다.
		</c:when>
		<c:when test="${dto.name == '손흥민'}">
			손흥민이 맞습니다. <br>
			나이는 ${dto.age}세 입니다.
		</c:when>
		<c:otherwise>
		누군지 모름....
		</c:otherwise>
	</c:choose>
	
</body>
</html>