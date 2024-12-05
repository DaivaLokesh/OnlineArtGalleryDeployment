<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="SellerNavbar.jsp" %>
 <h3 align="center">Seller Registration Form</h3>
 <div class="form-control">
 <form method="POST" action="insertseller">
  <label>Enter Name</label>
  <input type="text" class="form-control" name="sname" required><br/>
  <label>Enter Email ID</label>
  <input type="email" name="semail" class="form-control" required/><br/>
  <label>Enter Password</label>
  <input type="password" name="spwd" class="form-control" required/><br/>
  <label>Enter Location</label>
  <input type="text" name="slocation" class="form-control" required/><br/>
  <label>Enter Contact</label>
  <input type="number" name="scontact" class="form-control" required/><br/>
  <input type="submit" class="btn btn-success" value="register"/>
  <input type="reset" class="btn btn-success" value="clear"/>
 </form>
 </div>
</body>
</html>