<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attacker</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style19 {color: #FFFF00}
-->
</style>
 <script language="javascript" type='text/javascript'>
         function loadFileAsText()
         {
	     var fileToLoad = document.getElementById("file").files[0];
	     var fileReader = new FileReader();
	     fileReader.onload = function(fileLoadedEvent) 
	     {
		 var textFromFileLoaded = fileLoadedEvent.target.result;
		 document.getElementById("textarea").value = textFromFileLoaded;
	     };
	     fileReader.readAsText(fileToLoad, "UTF-8");
         }
         </script>
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
    <li><a href="dataOwnerLogin.jsp">User</a></li>
    <li><a href="cloudServerLogin.jsp">CloudServer</a></li>
    <li><a href="aboutProject.html">AboutProject</a></li>
  </ul>
</div>
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
        <h2>Attack The File    </h2>
       
        <p>
		 <%@ include file="connect.jsp" %>
		 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		<%
 
  	try {
	
  		String file = request.getParameter("t1");
  		String attacker = request.getParameter("un");
  		String cname,oname,ct,ct1;

  		String strQuery = "select * from vmfiles11 where fname='"+ file + "' ";
  		ResultSet rs = connection.createStatement().executeQuery(strQuery);
  	
  			if (rs.next() == true) 
			{
  				String id=rs.getString(1);
				application.setAttribute("id",id);
				cname=rs.getString(2);
				oname=rs.getString(3);
				ct=rs.getString(5);
				String decryptedValue = new String(Base64.encode(ct.getBytes()));
				
  			
  %>

<form action="attack3.jsp" method="get" name="form1" id="form1">
<table width="478" border="0" align="center">
	<tr>
		<td width="223" bgcolor="#FF0000"><span class="style1 style19">File Name :-</span></td>
		<td width="245"><label> <input required name="fname"
			type="fname" value="<%=file%>" size="40" /> </label></td>
	</tr>

	<tr>
		<td height="34" bgcolor="#FF0000"><span class="style1 style19">Ur Name :-</span></td>
		<td><input name="aname" type="text" value="<%=attacker%>" size="40" /></td>
	</tr>
	
	<tr>
		<td height="34" bgcolor="#FF0000"><span class="style1 style19">Owner Name :-</span></td>
		<td><input name="oname" type="text" value="<%=oname%>" size="40" /></td>
	</tr>
    
	<tr>
		<td height="34" bgcolor="#FF0000"><span class="style1 style19">Cloud Name :-</span></td>
		<td><input name="cname" type="text" value="<%=cname%>" size="40" /></td>
	</tr>
	
	<tr>
		<td bgcolor="#FF0000"><span class="style1 style19">File Content :-</span></td>
		<td><textarea name="text" id="textarea" cols="45" rows="17"><%=ct%></textarea></td>
	</tr>


	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>z
		<div align="right"></div>		</td>
		<td><label> <input type="submit" name="Submit2"
			value="Attack" /> </label></td>
	</tr>
</table>
<p><a href="attack1.jsp">Back</a></p>
</form>

<%
	} 
  		
  		else {
			out.println("File Doesn't Exist !!!");
			%>
              <p align="right"><a href="attack1.jsp">Back</a></p>
            <%
			 }
					connection.close();
                	}
			        catch (Exception e) 
					{
					  out.println(e.getMessage());
					}
			%>

        </p>
        
        
     
      </div>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>
    <li><a href="index.html">Home</a></li>
    
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
