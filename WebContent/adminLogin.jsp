<%
	String id=request.getParameter("id");
	String password=request.getParameter("password");
	if(id.equals("admin")&&password.equals("pass"))
	{
		Cookie c=new Cookie("id",id);
		c.setMaxAge(0);
		response.addCookie(c);
		response.sendRedirect("welcomeAdmin.jsp");
	}
	else
	{
		response.sendRedirect("errorAdmin.jsp");
	}
%>