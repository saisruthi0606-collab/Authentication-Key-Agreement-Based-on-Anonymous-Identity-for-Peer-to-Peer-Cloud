<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Cloud Efficiency</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style27 {color: #00BFF5}
.style30 {font-size: 17px}
.style31 {color: #FF0000}
.style32 {font-size: 17px; color: #FF0000; }
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
    <li class="active"><a href="dataOwnerLogin.jsp" class="first">User</a></li>
    <li><a href="cloudServerLogin.jsp">CloudServer</a></li>
    <li><a href="aboutProject.html">AboutProject</a></li>
  </ul>
</div>
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
        <h2><span class="style27"><%=request.getParameter("t3") %></span> Efficiency Details</h2>
        <p><%@ include file="connect.jsp" %>
		<%@ page import="java.util.*" %>
		<%
        
     try 
	    {
      	
      		
     		 
           String cloud = request.getParameter("t3");
            String query1="select * FROM server where username='"+cloud+"'"; 
            Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(query1);
           
 	   while ( rs1.next() )
 	   {
 			double att = rs1.getInt(5); 
			double att1=100-att*100.0/100.0;
 		   
 	   
      		
        
		
		   %> 
		   
        <form action="cRecommend.jsp?cname=<%=cloud%>" method="post" name="form1">
  <div align="center" class="style1">  
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="413" border="0">
     
     
      <tr>
        <td width="196" height="54" bgcolor="#FFFF00"><div align="center" class="style8 style30 style31">Number Of Attacks </div></td>
        <td width="207">
          
           
            <div align="center">
              <input type="text" name="t1" value="<%=att%>" />
            </div>           </td>
      </tr>
     
      <tr>
        <td height="41" bgcolor="#FFFF00"><div align="center" class="style32">Cloud Efficiency </div></td>
        <td><div align="center">
          <input type="text" name="t2" value="<%=att1+"%"%>" />
        </div></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <input type="submit" name="Submit" value=" Recommend ">
        </label></td>
      </tr>
    </table>
    <p>&nbsp;    </p>
  </div>
</form><%}

 connection.close();
          }catch(Exception e)
          {
            out.println(e.getMessage());
          }%></p>
       
        
        
        <p>&nbsp;</p>
        <p><a href="verifyOwnerFile.jsp">Back</a></p>
      </div>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>
    <li><a href="dataOwnerMain.jsp">Data Owner Main	</a></li>
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
