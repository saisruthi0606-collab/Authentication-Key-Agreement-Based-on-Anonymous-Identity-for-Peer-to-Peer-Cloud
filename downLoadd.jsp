<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search File</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style11 {font-size: 14px}
.style12 {
	color: #FF0000;
	font-weight: bold;
}
.style13 {
	font-size: 14px;
	color: #FF0000;
	font-weight: bold;
}
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
        <h2>Request key </h2>
       
        <p>		
         <%@ include file = "connect.jsp" %>
		 <%@ page import = "java.sql.*" %>
        <%
		
		try 
				{
	
		String id = request.getParameter("id");
		Statement stmt=connection.createStatement();
		String str = " select * from vmfiles where id='"+id+"' ";
	
		 
		ResultSet rs = stmt.executeQuery(str);
		if(rs.next())
		{
		String sk=rs.getString(9);
		String fname=rs.getString(4);
		
		
		
		%>
       <form id="form2" name="form2" method="post" action="downLoad1.jsp?id=<%=id%>">
        <table width="371" border="0" align="center">
          <tr>
            <td width="175" height="37"><div align="center" class="style11 style12">File Name </div></td>
            <th width="186" scope="col">
              <label>
                <div align="center">
                  <input type="text" name="t1" value="<%=fname%>"/>
                </div>
              </label>              </th>
          </tr>
          <tr>
            <td height="37"><div align="center" class="style13">Request Key Authentication </div></td>
            <td><div align="center">
              <input type="text" name="t2" value="<%=sk%>"/>
            </div></td>
          </tr>
          <tr>
            <td>              <label>
                <div align="right">
                  <input type="submit" name="Submit" value="download" />
                </div>
              </label>                        </td>
            <td>&nbsp;</td>
          </tr>
        </table>
    </form> 
	  
	  		
      
         <% }}
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%> 		  
			    
       
        </p>
	  
        <p>
	    
</p>
        <p><a href="downLoad.jsp">Back</a></p>
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
