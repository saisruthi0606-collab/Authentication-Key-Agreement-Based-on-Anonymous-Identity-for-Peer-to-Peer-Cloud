<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Cloud Tasks</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style19 {color: #00BFF5}
.style26 {font-size: 16px}
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
    <li class="active"><a href="MobileTerminalLogin.jsp">Mobile Terminal</a><a href="MobileTerminalLogin.jsp" class="first"></a></li>
    <li><a href="dataOwnerLogin.jsp">User</a></li>
    <li><a href="cloudServerLogin.jsp">CloudServer</a></li>
    <li><a href="aboutProject.html">AboutProject</a></li>
  </ul>
</div>
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
        <h2>AllCloud Files</h2>
       
        <p>
        <table width="406" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
     <td width="81" height="40" bgcolor="#FF0000"><div align="center" class="style7 style19 style26">SI NO </div></td>
	 <td width="168" bgcolor="#FF0000"><div align="center" class="style7 style19 style26">Cloud Name </div></td>
     <td width="149" height="40" bgcolor="#FF0000"><div align="center" class="style7 style19 style26">No of Tasks </div></td>
  </tr>
		
  <%@ include file="connect.jsp" %>
  <%
  
	String s2="",s3="";
	int i=0;

    try 
	  {
	  
	 
 
      	String query="select * from server "; 
        Statement st=connection.createStatement();
        ResultSet rs=st.executeQuery(query);
	  while ( rs.next() )
	   {
	 
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(4);
		
	
		
		%>

  <tr>
     <td height="29"><div align="center" class="style9 style27 style28"><%=i%></div></td>
     <td height="29"><div align="center" class="style9 style27 style28"><%=s2%></div></td>
     <td><div align="center" class="style9 style27 style28"><%=s3%></div></td>
  </tr>

<%
	} 
	   
%>     <tr>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
 
       </tr>
<%

	 
	 
	 
        connection.close();
       }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
        </p>
        
        

        <p><a href="MobileTerminalMain.jsp">Back</a></p>
      </div>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>
    <li><a href="MobileTerminalMain.jsp">Mobile Termincal Main	</a></li>
   	<li><a href="MobileTerminalLogin.jsp">Log Out</a></li>
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
