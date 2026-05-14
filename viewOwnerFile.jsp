<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Owner  Files</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style19 {color: #00BFF5}
.style24 {font-size: 15px}
.style25 {font-size: 18px}
.style26 {color: #FF0000}
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
        <h2><%=application.getAttribute("owner")%> Files</h2>
       
        <p>
		
  <%@ include file="connect.jsp" %>
  <%
    String owner=(String)application.getAttribute("owner");
	String s6="",s2="",s3="",s4="",s5="",cname="",s12="",s13="",s14="",s15="",s16="",s17="",s18="";
	int i=0,i1=0;

    try 
	  {
	
 
      	String query="select * from vmfiles where owner='"+owner+"'"; 
        Statement st=connection.createStatement();
        ResultSet rs=st.executeQuery(query);
		
		%>        
        
        
        <table width="574" border="1" align="left" cellpadding="0" cellspacing="0">
  <tr>
     <td width="50" height="40" bgcolor="#FF0000"><div align="center" class="style7 style24 style19">SI NO </div></td>
	 <td width="86" bgcolor="#FF0000"><div align="center" class="style7 style24 style19">File Name </div></td>
     <td width="100" bgcolor="#FF0000"><div align="center" class="style7 style24 style19">Rank</div></td>
     <td width="144" bgcolor="#FF0000"><div align="center" class="style7 style24 style19">Date & Time</div></td>
	    <td width="99" height="40" bgcolor="#FF0000"><div align="center" class="style7 style24 style19"> Cloud Name </div></td>
  </tr>
 
 
  <%
	  while ( rs.next() )
	   {
	 
		i=rs.getInt(1);
		s2=rs.getString(4);
		s3=rs.getString(2);
		s4=rs.getString(7);
		s5=rs.getString(8);
	
		
		%>

  <tr>
     <td height="29"><div align="center" class="style9 style26"><%=i%></div></td>
     <td height="29"><div align="center" class="style9 style26"><%=s2%></div></td>
     
     <td><div align="center" class="style9 style26"><%=s4%></div></td>
	 <td><div align="center" class="style9 style26"><%=s5%></div></td>
	 <td><div align="center" class="style9 style25 style26"><%=s3%></div></td>
  </tr>

<%
	 }
	   
%>     <tr>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
		 <td  valign="baseline" height="0">&nbsp;</td>
	
       </tr>
	   </table>
        <p>&nbsp;        </p>
        <p>
          <%
	
	 
	 



String query1="select * from migratedfiles where owner='"+owner+"'"; 
        Statement st1=connection.createStatement();
        ResultSet rs1=st1.executeQuery(query1);
		
		%>        
        </p>
        <p><h2>Migrated Files</h2></p>
        <p>&nbsp;</p>
        <table width="574" border="1" align="left" cellpadding="0" cellspacing="0">
  <tr>
     <td width="50" height="40" bgcolor="#FF0000"><div align="center" class="style7 style24 style19">SI NO </div></td>
	 <td width="86" bgcolor="#FF0000"><div align="center" class="style7 style24 style19">File Name </div></td>
     <td width="100" bgcolor="#FF0000"><div align="center" class="style7 style24 style19">Rank</div></td>
     <td width="144" bgcolor="#FF0000"><div align="center" class="style7 style24 style19">Date & Time</div></td>
	 <td width="99" height="40" bgcolor="#FF0000"><div align="center" class="style7 style24 style19">From Cloud</div></td>
     <td width="99" height="40" bgcolor="#FF0000"><div align="center" class="style7 style24 style19">To Cloud</div></td>
  </tr>
 
 
  <%
	  while ( rs1.next() )
	   {
	 
		i1=rs1.getInt(1);
		s12=rs1.getString(2);
		s13=rs1.getString(3);
		s14=rs1.getString(5);
		s15=rs1.getString(8);
		s16=rs1.getString(9);
	
		
		%>

  <tr>
     <td height="29"><div align="center" class="style9 style26"><%=i1%></div></td>
     <td height="29"><div align="center" class="style9 style26"><%=s12%></div></td>
     
     <td><div align="center" class="style9 style26"><%=s14%></div></td>
	 <td><div align="center" class="style9 style26"><%=s15%></div></td>
	 <td><div align="center" class="style9 style25 style26"><%=s12%></div></td>
	  <td><div align="center" class="style9 style25 style26"><%=s13%></div></td>
  </tr>

<%
	 }
	   
%>     <tr>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
         <td  valign="baseline" height="0">&nbsp;</td>
		 <td  valign="baseline" height="0">&nbsp;</td>
	
       </tr>
	   </table>
<%
	
	 
	 

        connection.close();
      






     
       }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

        </p>
        
        
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
