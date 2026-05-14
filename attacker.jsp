<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Attackers Details </title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style24 {font-size: 24px; color: #2c83b0; }
.style25 {font-size: 24px}
.style26 {color: #00C6FF}
.style27 {font-size: 15px}
.style28 {color: #FF0000}
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
    <li class="active"><a href="cloudServerLogin.jsp" class="first">Cloud<span class="style25">S</span>erver</a></li>
    <li><a href="aboutProject.html">AboutProject</a></li>
  </ul>
</div>
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
        <h2>All Attackers on <span class="style24"><%=(String)application.getAttribute("cloud")%></span></h2>
      
        <p><table width="616" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td width="57" height="38" bgcolor="#FF0000"><div align="center" class="color1 color1 style5 style7 style26 style27">File No</div></td>
    <td width="100" height="38" bgcolor="#FF0000"><div align="center" class="color1 color1 style5 style7 style26 style27">Attacker </div></td>
    <td width="99" height="38" bgcolor="#FF0000"><div align="center" class="color1 color1 style5 style7 style26 style27">Data Owner</div></td>
	<td width="104" height="38" bgcolor="#FF0000"><div align="center" class="color1 color1 style5 style7 style26 style27">File Name </div></td>
    <td width="129" bgcolor="#FF0000"><div align="center" class="color1 color1 style5 style7 style26 style27">Date & Time</div></td>

	 <td width="113" bgcolor="#FF0000"><div align="center" class="color1 color1 style5 style7 style26 style27">Digital Artifacts</div></td>
  </tr>
 <%@ include file="connect.jsp" %>
<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		
      		 
      		String cloud = (String)application.getAttribute("cloud");
      		String query="select * from attacker where cloud='"+cloud+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while( rs.next() )
	   {
		i = rs.getInt(1);
		s1 = rs.getString(7);
		s2 = rs.getString(2);
        s3 = rs.getString(4);
		s4 = rs.getString(8);
		s5 = rs.getString(6);
		
		
      		
	
		%>

  <tr>
      <td height="41"><div align="center" class="style8 style28"><%=i%></div></td>
      <td height="41"><div align="center" class="style8 style28"><%=s1%></div></td>
	   	    <td height="41"><div align="center" class="style8 style28"><%=s2%></div></td>
			<td><div align="center" class="style8 style28"><%=s3%> </a></div>			</td>
	   <td><div align="center" class="style8 style28"><%=s4%></div></td>
		  <td><div align="center" class="style8 style28"><%=s5%></div></td>
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
