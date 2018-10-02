<!DOCTYPE html>
<html lang="en">
<head>
  <title>Voting Result</title>
  <link rel="stylesheet" type="text/css" href="mystyle.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
    text-align: center;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color: #fff;
}
table#t01 th {
    background-color: black;
    color: white;
}
</style>
</head>
<body style="background-image:url(images/back.jpg);text-align:center;background-repeat:no-repeat; background-size: 100% 100%;height:100%;width:100%;background-attachment:fixed">
<div class="header">
  <h1 style="font-family: 'Rammetto One', cursive;">View Votes</h1>
</div>

<div class="container" >
<ul>
  <li><a href="welcomeAdmin.jsp">back</a></li>
</ul>
</div>

</body>
</html>

<%@page import="model.*,java.util.*"%>
<jsp:useBean id="c" class="model.Count" ></jsp:useBean>
<jsp:useBean id="dao" class="dao.VoterDao"></jsp:useBean>
<%
	List<Count> cObj=dao.viewVotes(c);
	Iterator<Count> it=cObj.iterator();
%>
<html><body><form method="post">
<div class="container" >
<table id="t01">
<tr >
<th><h1>S.N.</h1></th><th><h1>Party Name</h1></th><th><h1>Total votes</h1></th>
</tr></div>
<%
			int x=1;
			while(it.hasNext())
			{
				c=it.next();
				out.println("<tr align='center'>");
				out.println("<td><h3>"+x+"</h3></td>");
				out.println("<td><h3>"+c.getPname()+"</h3></td>");
				out.println("<td><h3>"+c.getCount()+"</h3></td>");
				out.println("</tr>");
				++x;
			}
 %>
</table></form></body></html>