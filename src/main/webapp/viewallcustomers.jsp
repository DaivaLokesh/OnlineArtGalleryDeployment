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
<h3 align="center">View All Customers</h3>
<table align="center" border="2" class="table table-striped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<th>DATE-OF-BIRTH</th>
<th>EMAIL</th>
<th>LOCATION</th>
<th>CONTACT NO</th>
</tr>

<c:forEach items="${customerlist}" var="customer">
<tr>
<td><c:out value="${customer.id}"></c:out></td>
<td><c:out value="${customer.name}"></c:out></td>
<td><c:out value="${customer.gender}"></c:out></td>
<td><c:out value="${customer.dateofbirth}"></c:out></td>
<td><c:out value="${customer.email}"></c:out></td>
<td><c:out value="${customer.location}"></c:out></td>
<td><c:out value="${customer.contactno}"></c:out></td>
</tr>
</c:forEach>

</table>
</div>
</body>
</html>