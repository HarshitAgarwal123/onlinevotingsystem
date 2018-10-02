<!DOCTYPE html>
<html lang="en">
 <head>
 <title>Login Error</title>
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
<form name="myform" action="voterLogin.jsp" method="post" onsubmit="return validate()">
  <h1 style="font-family: 'Rammetto One', cursive;">E-voting Portal	</h1>
</div>

<div class="container" >
<ul>
  <li><a href="index.jsp">Home</a></li>
  <li><a href="http://eci.nic.in">Contact</a></li>
  <li><a href="adminIndex.jsp">Login</a></li>
</ul>

<%="<h1><br><br><br><br><p style='color:white'>Invalid Details...<br><br>Please try Again!</p></h1>" %><br>