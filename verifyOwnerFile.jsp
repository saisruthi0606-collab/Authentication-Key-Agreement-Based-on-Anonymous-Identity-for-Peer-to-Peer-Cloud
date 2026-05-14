<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Verify Owner Files</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style20 {
	font-size: 16px;
	color: #00BFF5;
}
.style21 {color: #FFFF00}
.style22 {color: #FF0000}
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
        <h2>Verify <%=(String)application.getAttribute("owner")%>  Files </h2>
       
       
        
       
        <p>
		<form id="form1" name="form1" method="post" action="verifyOwnerFile.jsp?v=<%="verify"%>">
	  <p align="center"><span class="style5 style3 style20"> Enter The File Name </span>
      <input required="required" name="fname" type="text" value="" size="40" /></p>
	   <p align="center"><input type="submit" name="Submit2" value="Search" />
	   </p>
	  </form>
        </p>
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
           String s1,s2,s3,s4,s5;
		   int i=0;
          String owner = (String)application.getAttribute("owner");
		  String fname = request.getParameter("fname");
		  String v = request.getParameter("v");
    
			
			if(v.equalsIgnoreCase("verify"))
			{
			String str1="select * from vmfiles where owner = '"+owner+"' and fname = '"+fname+"'"; 
            Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(str1);
			
					
			
	   if ( rs1.next() )
	      {
		  
		  %>
		<table width="542" border="1" cellpadding="0" cellspacing="0">
		      <tr>
				<td width="79" height="35" bgcolor="#FF0000"><div align="center" class="style5 style6 style20 style21">File ID </div></td>
				<td width="212" bgcolor="#FF0000"><div align="center" class="style7 style20 style21">File Name </div></td>
				<td width="212" bgcolor="#FF0000"><div align="center" class="style7 style20 style21">Cloud Name </div></td>
				<td width="99" bgcolor="#FF0000"><div align="center" class="style7 style20 style21">Rank </div></td>
				<td width="142" bgcolor="#FF0000"><div align="center" class="style7 style20 style21">Verify</div></td>
		  </tr>
			<%	
		   i=rs1.getInt(1);
		   s1=rs1.getString(4);
		   s2=rs1.getString(2);
		   s3=rs1.getString(7);
		   s4=rs1.getString(5);
		   
		
		%>
		<tr>
			<td height="33"><div align="center" class="style22"> <%=i%> </div></td>
			<td><div align="center" class="style22"> <%=s1%> </div></td>
			<td><div align="center" class="style22"> <%=s2%> </div></td>
			<td><div align="center" class="style22"> <%=s3%> </div></td>
			<td><div align="center" class="style22"><a href="verifyOwnerFile1.jsp?id=<%=i%>&fname=<%=s1%>"> <%=s1%> </a></div></td>
		</tr>

		
			<tr>
			<td height="9"> </td>
			<td> </td>
			<td> </td>
			<td> </td>
			<td> </td>
			</tr>
			 <p><a href="dataOwnerMain.jsp">Back</a></p>
			<%
			
	}
			 else
			 {
			 %><h2>Sorry No File Found</h2><%
			 %><p><a href="verifyOwnerFile.jsp">Back</a></p><%
			 }
			 }
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
	
    <li><a href="viewOwnerFile.jsp">View Owner File With Cloud Name</a></li>
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
