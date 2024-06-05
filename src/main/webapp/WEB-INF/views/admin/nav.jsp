<%@page import="kr.co.zzz.dto.AdminDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	AdminDto adminLoginedDto = (AdminDto) session.getAttribute("adminLoginedDto");
if (adminLoginedDto != null) {
	// 로그인 이후
%>
<ul>
	<li><a href="<c:url value='/admin/logout'></c:url>">LOG OUT</a></li>
	<li><a href="<c:url value='/admin/modifyAccountForm'></c:url>">ModifyAccount</a></li>
	<c:if test="${adminLoginedDto.a_id eq 'admin'}"><li><a href="<c:url value='/admin/listupAdmin'></c:url>">관리자 목록</a></li></c:if>
	<li><a href="<c:url value='/admin/getAllBooks'></c:url>">전체도서</a></li>
	<li><a href="<c:url value='/admin/registerBookForm'></c:url>">도서등록</a></li>
</ul>

<%} else { //로그인 안된 상태 %>
<ul>
	<li><a href="<c:url value='/admin/createAccountForm'></c:url>">CreateAccount</a>
	</li>
	<li><a href="<c:url value='/admin/loginForm'></c:url>">login</a></li>
</ul>

<%} %>