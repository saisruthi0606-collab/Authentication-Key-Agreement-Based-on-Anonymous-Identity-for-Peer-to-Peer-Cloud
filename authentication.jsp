<title>SAE : </title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String username=request.getParameter("userid");      
   	String Password=request.getParameter("pass");
	String type=request.getParameter("type");
	
    try
	{
		if(type.equalsIgnoreCase("owner"))//for Data Owner
		{
			application.setAttribute("owner",username);
			
			String sql="SELECT * FROM dataowner where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				
				response.sendRedirect("dataOwnerMain.jsp");
			}
			else
			{
				response.sendRedirect("wrongLogin.jsp");
			}
		}
		else if(type.equalsIgnoreCase("master"))//for Mobile Terminal
		{
			application.setAttribute("master",username);
			
			String sql="SELECT * FROM mobileterminal  where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("MobileTerminalMain.jsp");
			}
			else
			{
				response.sendRedirect("wrongLogin.jsp");
			}
		 }
		else{                                    //for cloud server
			application.setAttribute("cloud",username);
			
			String sql="SELECT * FROM server where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				
				
				response.sendRedirect("cloudServerMain.jsp");
			}
			else
			{
				response.sendRedirect("wrongLogin.jsp");
			}
		}
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>