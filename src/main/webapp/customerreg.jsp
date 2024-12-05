<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="Navbar.jsp" %>
 <h3 align="center">Customer Registration Form</h3>
 <div class="form-control">
 <form method="POST" action="insertcustomer">
  <label>Enter Name</label>
  <input type="text" class="form-control" name="cname" required><br/>
  <div class="mb-3">
  <label class="form-label">Select Gender</label>
  <div class="form-check">
    <input class="form-check-input" type="radio" name="cgender" value="male" id="genderMale" required>
    <label class="form-check-label" for="genderMale">Male</label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="radio" name="cgender" value="female" id="genderFemale" required>
    <label class="form-check-label" for="genderFemale">Female</label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="radio" name="cgender" value="others" id="genderOthers" required>
    <label class="form-check-label" for="genderOthers">Prefer Not to Say</label>
  </div>
</div>
  <label>Enter Date Of Birth</label>
  <input type="date" name="cdob"  required/><br/>
  <label>Enter Email ID</label>
  <input type="email" name="cemail" class="form-control" required/><br/>
  <label>Enter Password</label>
  <input type="password" name="cpwd" class="form-control" required/><br/>
  <label>Enter Location</label>
  <input type="text" name="clocation" class="form-control" required/><br/>
  <label>Enter Contact</label>
  <input type="number" name="ccontact" class="form-control" required/><br/>
  <input type="submit" class="btn btn-success" value="register"/>
  <input type="reset" class="btn btn-success" value="clear"/>
 </form>
 </div>
</body>
</html>