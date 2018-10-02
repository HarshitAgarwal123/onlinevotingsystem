<!DOCTYPE html>
<html lang="en">
 <head>
 <title>Voter Registered</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Rammetto+One" rel="stylesheet"> 
</head>

<body style="background-image:url(images/back.jpg);text-align:center;background-repeat:no-repeat; background-size: 100% 100%;height:560px;width:100%;background-attachment:fixed ">
<div class="header">
  <h1 style="font-family: 'Rammetto One', cursive;">E-voting Portal	</h1>
</div>

<div class="container" > 
<ul>
  <li><a href="index.jsp">Home</a></li>
  <li><a href="http://eci.nic.in">Contact</a></li>
  <li><a href="index.jsp">Login</a></li>
</ul>

<%@page import="java.util.*" %>
<jsp:useBean id="rv" class="model.RegisterVoter"></jsp:useBean>
<jsp:useBean id="dao" class="dao.VoterDao"></jsp:useBean>
<%
	String name=request.getParameter("name");
	long aadharNo = Long.parseLong(request.getParameter("aadharNo"));
	String dob=request.getParameter("dob");
	long mobileNo=Long.parseLong(request.getParameter("mobileNo"));
	String email=request.getParameter("email");

	rv.setName(name);
	rv.setAadharNo(aadharNo);
	rv.setDob(dob); 
	rv.setMobileNo(mobileNo);
	rv.setEmail(email);
	dao.registerVoter(rv);
	//response.sendRedirect("index.jsp");
	out.println("<br><br><br><br><h1><p style='color:white'>Successfully registered...</p></h1>");
%>