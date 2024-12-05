<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<%@include file="adminNavbar.jsp" %>
<div>
&nbsp;
<h3 align="center">View All Sellers</h3>
<table align="center" border="2" class="table table-striped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>EMAIL</th>
<th>LOCATION</th>
<th>CONTACT NO</th>
</tr>

<c:forEach items="${customerlist}" var="seller">
<tr>
<td><c:out value="${seller.id}"></c:out></td>
<td><c:out value="${seller.name}"></c:out></td>
<td><c:out value="${seller.email}"></c:out></td>
<td><c:out value="${seller.location}"></c:out></td>
<td><c:out value="${seller.contact}"></c:out></td>
</tr>
</c:forEach>

</table>
</div>
</body>
</html>