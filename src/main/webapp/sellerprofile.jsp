<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.klu.jfsd.springBoot.model.Seller"%>
<%
Seller s = (Seller) session.getAttribute("seller");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Seller Profile</title>
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
<%@include file="SellerNavbar.jsp" %><br/>
    <div class="container">
        <h2>My Profile</h2><br/>
        <div class="profile-detail">
            <span class="profile-label">Name:</span> <%= s.getName() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Email:</span> <%= s.getEmail() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Id: </span> <%= s.getId() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Contact:</span> <%= s.getContact() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Location:</span> <%= s.getLocation() %>
        </div>
        <div class="profile-detail">
            
        </div>
    </div>
</body>
</html>
