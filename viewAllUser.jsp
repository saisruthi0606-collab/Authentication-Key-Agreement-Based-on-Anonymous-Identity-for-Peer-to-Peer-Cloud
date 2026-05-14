<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Users</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style21 {font-size: 16px}
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
    <li><a href="dataOwnerLogin.jsp">User</a></li>
    <li class="active"><a href="cloudServerLogin.jsp" class="first">CloudServer</a></li>
    <li><a href="aboutProject.html">AboutProject</a></li>
  </ul>
</div>
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
        <h2>All Data Owners And End Users </h2>
      
        <p>
	<table width="581" border="3" align="center"  cellpadding="0" cellspacing="0"  font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr>
					  <td  width="75" height="35" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">ID</div></td>
                        <td  width="113" height="35" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">UserImage</div></td>
						<td  width="96" height="35" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">Username</div></td>
                        <td  width="83" height="35" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">Mobile</div></td>
                        <td  width="114" height="35" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">Address</div></td>
                        <td  width="82" height="35" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">Gender</div></td>
                      </tr>
					
<%@ include file="connect.jsp" %>

                      <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{    String cloud = (String)application.getAttribute("cloud");
						   	String query="select * from dataowner where cloud='"+cloud+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
						
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(8);
								
								
					
								
						
					%>
                      <tr>
					<td  valign="baseline" height="0"><p class="style22">&nbsp;</p>
					  <div align="center" class="style22"><%=i%></div></td>
					  <td width="113" rowspan="1" >
						<div class="style22" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						<input  name="image" type="image" src="profilepic_image.jsp?uid=<%=i%>" style="width:80px; height:80px;"  />
				   		</a></div></td>
                        <td  valign="baseline" height="0"><p class="style22">&nbsp;</p>
                          <div align="center" class="style22"><%=s1%></div></td>
                        <td  valign="baseline" height="0"><p class="style22">&nbsp;</p>
                          <div align="center" class="style22"><%=s2%></div></td>
                        <td  valign="baseline" height="0"><p class="style22">&nbsp;</p>
                          <div align="center" class="style22"><%=s3%></div></td>
                        <td  valign="baseline" height="0"><p class="style22">&nbsp;</p>
                          <div align="center" class="style22"><%=s4%></div></td>
                      </tr>
                      <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                      <tr>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
                      </tr>
        </table>
        </p>
        
        
        <p><a href="cloudServerMain.jsp">Back</a></p>
      </div>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>
    
    <li><a href="cloudServerMain.jsp">Cloud Server Main</a></li>
	<li><a href="cloudServerLogin.jsp">Log Out</a></li>
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
