<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.klu.jfsd.springBoot.model.Seller" %>
<%
Seller s=(Seller)session.getAttribute("seller");
%>
<!DOCTYPE html>

<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="SellerNavbar.jsp" %>
<div align="center">
 Welcome <%=s.getName() %>
 </div>
</body>
</html>