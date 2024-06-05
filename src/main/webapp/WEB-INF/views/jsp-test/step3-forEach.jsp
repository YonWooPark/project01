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
	<%
		String friends[] = {"밀크", "두유", "밀키스"};
		request.setAttribute("fa", friends);
	%>
	<p>
	<table border="1">
		<tr>
			<th>count</th>
			<th>index</th>
			<th>name</th>
			<th>age</th>
		</tr>
		<c:forEach items="${dtos}" var="dto" varStatus="order">
			<tr>
				<td>${order.count}</td>
				<td>${order.index}</td>
				<td>${dto.name}</td>
				<td>${dto.age}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<h2>For-Each로 반복횟수 정하기</h2>
	<c:forEach begin="1" end="5"  var="num">
		${num} <br>
	</c:forEach>
	</body>
</html>