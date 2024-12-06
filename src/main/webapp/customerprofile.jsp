<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.klu.jfsd.springBoot.model.Customer"%>
<%
Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .profile-detail {
            margin: 10px 0;
            font-size: 16px;
            line-height: 1.6;
            color: #555;
        }
        .profile-label {
            font-weight: bold;
            color: #222;
        }
    </style>
</head>
<body>
<%@include file="CustomerNavbar.jsp" %><br/>
    <div class="container">
        <h2>My Profile</h2><br/>
        <div class="profile-detail">
            <span class="profile-label">Name:</span> <%= c.getName() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Email:</span> <%= c.getEmail() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Date-Of-Birth:</span> <%= c.getDateofbirth() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Contact:</span> <%= c.getContactno() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Location:</span> <%= c.getLocation() %>
        </div>
        <div class="profile-detail">
            
        </div>
    </div>
</body>
</html>
