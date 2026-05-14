<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Cloud Files</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style21 {font-size: 16px}
.style22 {font-size: 14px}
.style23 {color: #FF0000}
.style24 {font-size: 14px; color: #FF0000; }
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
					  <td  width="88" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">File Id</div></td>
                        <td  width="132" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">File Name</div></td>
						<td  width="112" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">Uploaded By </div></td><td  width="112" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">Authentication Key</div></td>
                        <td  width="87" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">Rank</div></td>
                        <td  width="146" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21">Date</div></td>
                      </tr>
					
<%@ include file="connect.jsp" %>

                      <%
					  
						String s1,s2,s3,s4,s33;
						String cloud=(String)application.getAttribute("cloud");
						int i=0;
						try 
						{
						   	String query="select * from vmfiles where cloud='"+cloud+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(3);
								s3=rs.getString(7);
							    s33=rs.getString(6);
								s4=rs.getString(8);
								
								
					
								
						
					%>
                      <tr>
					<td  valign="baseline" height="32">
					  <div align="center" class="style22 style23"><%=i%></div></td>
					  
                        <td  valign="baseline" height="32">
                        <div align="center" class="style24"><%=s1%></div></td>
                        <td  valign="baseline" height="32">
                        <div align="center" class="style24"><%=s2%></div></td>
						<td  valign="baseline" height="32">
                        <div align="center" class="style24"><%=s33%></div></td>
                        <td  valign="baseline" height="32">
                        <div align="center" class="style24"><%=s3%></div></td>
                        <td  valign="baseline" height="32">
                        <div align="center" class="style24"><%=s4%></div></td>
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
                      </tr>
        </table>
        </p>
        
        
        <p><a href="cloudServerMain.jsp">Back</a></p>
      </div>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
