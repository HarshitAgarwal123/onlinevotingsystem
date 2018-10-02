<!DOCTYPE html>
<html lang="en">
<head>
  <title>Candidates</title>
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
  <h1 style="font-family: 'Rammetto One', cursive;">Candidates Information</h1>
</div>

<div class="container" >
<ul>
  <li><a href="welcomeAdmin.jsp">back</a></li>
</ul>
</div>

</body>
</html>

<%@page import="model.*,java.util.*"%>
<jsp:useBean id="rc" class="model.RegisterCandidate" ></jsp:useBean>
<jsp:useBean id="dao" class="dao.VoterDao"></jsp:useBean>

<%
	List<RegisterCandidate> rcObj=dao.viewCandidates(rc);
	Iterator<RegisterCandidate> it=rcObj.iterator();
%>
<html><body><form method="post">
<table id="t01">
<tr >
<th><h1>Id</h1></th><th><h1>Candid Name</h1></th><th><h1>Party Name</h1></th><th><h1>Aadhar No</h1></th><th><h1>DOB</h1></th><th><h1>Mob No</h1></th><th><h1>Email</h1></th>
</tr> 

<%
			while(it.hasNext())
			{
				rc=it.next();
				out.println("<tr align='center'>");
				out.println("<td><h3>"+rc.getId()+"</h3></td>");
				out.println("<td><h3>"+rc.getcName()+"</h3></td>");
				out.println("<td><h3>"+rc.getpName()+"</h3></td>");
				out.println("<td><h3>"+rc.getAadharNo()+"</h3></td>");
				out.println("<td><h3>"+rc.getDob()+"</h3></td>");
				out.println("<td><h3>"+rc.getMobNo()+"</h3></td>");
				out.println("<td><h3>"+rc.getEmail()+"</h3></td>");
				out.println("</tr>");
			}
 %>
</table></form></body></html>