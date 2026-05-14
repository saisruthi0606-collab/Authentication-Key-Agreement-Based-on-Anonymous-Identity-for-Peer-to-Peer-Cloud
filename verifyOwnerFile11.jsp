<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Verify and Data Authentication</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style21 {color: #00BFF5}
.style22 {
	color: #FF0000;
	font-weight: bold;
	font-size: 24px;
}
.style24 {color: #FF0000}
-->
</style>
</head>
<body>
<div id="header">
  <div id="logo">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <h2 align="center" class="style4">Authentication and Key Agreement Based on Anonymous Identity for Peer to Peer Cloud</h2>
  </div>
</div>
<div id="navigation">
  <ul>
    <li><a href="index.html">Home</a></li>
    <li><a href="vertualMasterLogin.jsp">Mobile Terminal</a></li>
    <li ><a href="dataOwnerLogin.jsp" class="first">User</a></li>
    <li class="active"><a href="cloudServerLogin.jsp">CloudServer</a></li>
    <li><a href="aboutProject.html">AboutProject</a></li>
  </ul>
</div>
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
        <h2>Details of <span class="style21"><%=(String)request.getParameter("fname")%>  </span></h2>
       
       
        
       
        <p>
		  <%@ include file="connect.jsp" %>
		  <%
		  String id = request.getParameter("id");	  
			  
			  
	
      	try 
	{
       String mac1,mac2;
    
			String query1="select * from vmfiles where id='"+id+"'"; 
            Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(query1);
	   if ( rs1.next() )
	      {
		   mac1=rs1.getString(6);
		    %><h2><span class="style22">Authentication Key From Migrated Cloud</span>::
		    <%out.print(mac1);%></h2>
		  <%
		   String query2="select * from vmfiles11 where id='"+id+"'"; 
            Statement st2=connection.createStatement();
            ResultSet rs2=st2.executeQuery(query2);
	   if ( rs2.next() )
	      {
		   mac2=rs2.getString(6);
		    %>
		  <h2><span class="style22">Authentication Key  To Cloud</span>::
		    <%out.print(mac2);%></h2>
		  <%
		   
		   if(mac1.equalsIgnoreCase(mac2))
		   {
		   %><h2 class="style24">File is Safe and Authenticated In this Cloud</h2>
		  <%
		   }
		   else
		   {
		   %><h2>File is Attacked and Not Authenticated In this Cloud</h2><%
		   }
		   }}
		   connection.close();
		   }
		   catch(Exception e)
		   {
		    out.println(e.getMessage());
		   }
		   
		   %>
</p>
        <p><a href="viewMFile.jsp">Back</a></p>
      </div>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>
  
    <li><a href="cloudServerMain.jsp">Cloud Main</a></li>
    <li><a href="dataOwnerLogin.jsp">Log Out</a></li>
   
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
