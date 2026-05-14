<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Migrate Files</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style20 {
	font-size: 16px;
	color: #00BFF5;
}
.style22 {color: #00BFF5}
.style25 {color: #FF0000}
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
        <h2>Migrate Files</h2>
       
       
        
       
        <p>
	  
	    
	  <%@ include file = "connect.jsp" %>
	  <%@ page import = "java.util.Date" %>
	  <%@ page import = "java.security.Key" %>
	  <%@ page import = "java.text.SimpleDateFormat" %>
	  <%@ page import = "org.bouncycastle.util.encoders.Base64"%>
	  <%@ page import = "javax.crypto.spec.SecretKeySpec,javax.crypto.Cipher" %>
	  
	  
	  <%	  
			  
			  
	
      	try 
	{
           
          String owner = (String)application.getAttribute("owner");
		
		 
    
			
			int i=0;
			String s1,s2,s3,s4;
			String str1="select * from vmfiles where owner = '"+owner+"'"; 
            Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(str1);
			
			
		  %>
		<table width="566" border="1" cellpadding="0" cellspacing="0">
		      <tr>
				<td width="65" height="35" bgcolor="#FF0000"><div align="center" class="style5 style6 style20 style22">File ID </div></td>
				<td width="137" bgcolor="#FF0000"><div align="center" class="style7 style20 style22">File Name </div></td>
				<td width="126" bgcolor="#FF0000"><div align="center" class="style7 style20 style22">Cloud Name </div></td>
				<td width="112" bgcolor="#FF0000"><div align="center" class="style7 style20 style22">Rank </div></td>
				<td width="114" bgcolor="#FF0000"><div align="center" class="style7 style20 style22">Date</div></td>
				<td width="114" bgcolor="#FF0000"><div align="center" class="style7 style20 style22">Task</div></td>
		  </tr>
			<%			
			
	   while ( rs1.next() )
	      {
		  
		   i=rs1.getInt(1);
		   s1=rs1.getString(4);
		   s2=rs1.getString(2);
		   s3=rs1.getString(7);
		   s4=rs1.getString(8);
		   
		
		%>
		<tr>
			<td height="35"><div align="center" class="style25"> <%=i%> </div></td>
			<td><div align="center" class="style25"> <%=s1%> </div></td>
			<td><div align="center" class="style25"> <%=s2%> </div></td>
			<td><div align="center" class="style25"> <%=s3%> </div></td>
			<td><div align="center" class="style25"> <%=s4%> </div></td>
			<td><div align="center" class="style25"> <a href="migrateFiles1.jsp?fname=<%=s1%>&cname=<%=s2%>"><%="Migrate"%> </a></div></td>
		</tr>
<%
}
%>
		
			<tr>
			<td height="27"> </td>
			<td> </td>
			<td> </td>
			<td> </td>
			<td> </td>
			<td> </td>
			</tr>
		</table>
			 <p><a href="dataOwnerMain.jsp">Back</a></p>
			<%
			

			 
			
			 
			 
			 
			 
			 
           connection.close();
          }catch(Exception e)
          {
            out.println(e.getMessage());
          }
	   %>
	</table>

</p>
       
      </div>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>

    <li><a href="dataOwnerMain.jsp">Data Owner Main</a></li>
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
