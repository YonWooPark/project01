<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="kr.co.zzz.jspTest.CarDto"  %>
<%@ page import="java.util.HashMap"  %>
<%@ page import="java.util.ArrayList"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		CarDto car1 = new CarDto("가1234" , "소나타", 2000);
		request.setAttribute("dto", car1);
	%>
	
	<h3>EL(Expression Language)기본</h3>
	<strong>1. CarDto에서 변수 model 출력</strong>
		${dto.model}
	
<!-- 	맵으로 변수를 출력 -->
	<%
		HashMap<String, CarDto> map = new HashMap<String, CarDto>();
		map.put("car1", new CarDto("나2222", "모닝", 1000));
		session.setAttribute("carMap", map);
	%>
	
	<strong>2. HashMap에서 변수 model 출력</strong> <br>
	${sessionScope.carMapdto.car1.model}
	
	<!-- 	리스트로 변수를 출력 -->
	<%
		ArrayList<CarDto> list = new ArrayList<CarDto>();
		list.add(new CarDto("다3333", "테슬라", 3000));
		session.setAttribute("list", list);
	%>
	
	<strong>3. ArrayList에서 변수 model 출력</strong> <br>
	${sessionScope.list[0].model}
	
</body>
</html>