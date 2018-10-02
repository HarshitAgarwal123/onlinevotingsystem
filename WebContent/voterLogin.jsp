<!DOCTYPE html>
<html lang="en">
 <head>
 <title>Alert Page</title>
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
  <li><a href="registerIndex.jsp">New Voter</a></li>
</ul>
<%@page import="dao.*,model.*"%>
<%
		
		long aadharNo=Long.parseLong(request.getParameter("aadharNo"));
		ViewVotes v=new ViewVotes();
		v.setaadharNo(aadharNo);
		RegisterVoter rv=new RegisterVoter();
		rv.setAadharNo(aadharNo);
		VoterDao voterDao=new VoterDao();
		Boolean b=voterDao.validate(v);
		Boolean b1=voterDao.checkVoter(rv);
		if(b==true&&b1==true)
		{
			 out.println("<br><br><br><br><br><h1><p style='color:white'> You have already voted...</p></h1>");
		}
		else if(b1==false)
		{
			out.println("<br><br><br><br><br><br><h1><p style='color:white'>You are not a registered Voter ...<br><br> Please register YourSelf First</p></h1>");
		}
		else
		{
			response.sendRedirect("vote.jsp?aadharNo="+request.getParameter("aadharNo"));
		}
%>