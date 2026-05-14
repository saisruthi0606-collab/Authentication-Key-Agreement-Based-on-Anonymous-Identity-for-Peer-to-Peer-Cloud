<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Cloud Files</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style24 {font-size: 15px}
.style25 {color: #2cadff}
.style26 {color: #FFFF00}
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
    <li class="active"><a href="mobileterminalLogin.jsp">Mobile Terminal</a><a href="mobileterminalLogin.jsp" class="first"></a></li>
    <li><a href="dataOwnerLogin.jsp">User</a></li>
    <li><a href="cloudServerLogin.jsp">CloudServer</a></li>
    <li><a href="aboutProject.html">AboutProject</a></li>
  </ul>
</div>
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
        <h2>All Cloud Files</h2>
       
        <p>
		
  <%@ include file="connect.jsp" %>
  <%
  
	String s6="",s2="",s3="",s4="",s5="",cname="";
	int i=0;

    try 
	  {
	  
	  String str="select * from server";
	  Statement stmt=connection.createStatement();
      ResultSet rst=stmt.executeQuery(str);
	  while(rst.next())
	  {
	    cname=rst.getString(2);
 
      	String query="select * from vmfiles where cloud='"+cname+"' "; 
        Statement st=connection.createStatement();
        ResultSet rs=st.executeQuery(query);
		
		%>        
        
        
        <table width="574" border="1" align="left" cellpadding="0" cellspacing="0">
  <tr>
     <td width="50" height="40" bgcolor="#FF0000"><div align="center" class="style7 style24 style26">SI NO </div></td>
	 <td width="86" bgcolor="#FF0000"><div align="center" class="style7 style24 style26">File Name </div></td>
     <td width="99" height="40" bgcolor="#FF0000"><div align="center" class="style7 style24 style26">Owner Name </div></td>
     <td width="100" bgcolor="#FF0000"><div align="center" class="style7 style24 style26">Rank</div></td>
     <td width="144" bgcolor="#FF0000"><div align="center" class="style7 style24 style26">Date & Time</div></td>
  </tr>
  <p>&nbsp;</p>
  <p><h3 class="style25"> <%=cname+" : "%></h3></p>
  <%
	  while ( rs.next() )
	   {
	 
		i=rs.getInt(1);
		s2=rs.getString(4);
		s3=rs.getString(3);
		s4=rs.getString(7);
		s5=rs.getString(8);
	
		
		%>

  <tr>
     <td height="29"><div align="center" class="style9 style27"><%=i%></div></td>
     <td height="29"><div align="center" class="style9 style27"><%=s2%></div></td>
     <td><div align="center" class="style9 style27"><%=s3%></div></td>
     <td><div align="center" class="style9 style27"><%=s4%></div></td>
	 <td><div align="center" class="style9 style27"><%=s5%></div></td>
  </tr>

<%
	 
	   
%>     <tr>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
		 <td  valign="baseline" height="0">&nbsp;</td>
	
       </tr>
<%
	 } 
	 
	 
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
        
        
        <p>&nbsp;</p>
        <p><a href="MobileTerminalMain.jsp">Back</a></p>
      </div>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>
    <li><a href="MobileTerminalMain.jsp">Mobile Terminal Main	</a></li>
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
