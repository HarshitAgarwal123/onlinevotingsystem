<%
		Cookie c[]=request.getCookies();
		c[0].setMaxAge(0);
		response.addCookie(c[0]);
		response.sendRedirect("index.jsp");
 %>