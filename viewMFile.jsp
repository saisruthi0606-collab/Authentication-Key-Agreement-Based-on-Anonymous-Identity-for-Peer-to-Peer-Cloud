<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Migrated Files</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style21 {font-size: 16px}
.style24 {font-size: 24px; color: #2c83b0; }
.style25 {color: #FFFF00}
.style26 {font-size: 14px; color: #FF0000; }
.style27 {color: #FF0000}
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
        <h2>All Migrated Files to <span class="style24"><%=(String)application.getAttribute("cloud")%></span></h2>
      
        <p>
	<table width="581" border="3" align="center"  cellpadding="0" cellspacing="0"  font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr>
					  <td  width="88" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style25">File Id</div></td>
                        <td  width="132" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style25">File Name</div></td>
					    <td  width="132" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style25">From Cloud</div></td>
						<td  width="112" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style25">Uploaded By </div></td>
                        <td  width="87" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style25">Rank</div></td>
                        <td  width="146" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style25">Date</div></td>
					    <td  width="146" height="38" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style21 style25">Verify and Authenticate</div></td>
                      </tr>
					
<%@ include file="connect.jsp" %>

                      <%
					  
						String s1,s2,s3,s4,s5;
						String cloud=(String)application.getAttribute("cloud");
						int i=0;
						try 
						{
						   	String query="select * from migratedfiles where tocloud='"+cloud+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(5);
								s2=rs.getString(2);
								s3=rs.getString(4);
								s4=rs.getString(8);
								s5=rs.getString(9);
								
								
					
								
						
					%>
                      <tr>
					<td  valign="baseline" height="32">
					  <div align="center" class="style26"><%=i%></div></td>
					  
                        <td  valign="baseline" height="32">
                        <div align="center" class="style26"><%=s1%></div></td>
                        <td  valign="baseline" height="32">
                        <div align="center" class="style26"><%=s2%></div></td>
                        <td  valign="baseline" height="32">
                        <div align="center" class="style26"><%=s3%></div></td>
                        <td  valign="baseline" height="32">
                        <div align="center" class="style26"><%=s4%></div></td>
                         <td  valign="baseline" height="32">
                        <div align="center" class="style26"><%=s5%></div></td> 
						<td><div align="center" class="style27"><a href="verifyOwnerFile11.jsp?id=<%=i%>&fname=<%=s1%>"> <%=s1%> </a></div></td>
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
