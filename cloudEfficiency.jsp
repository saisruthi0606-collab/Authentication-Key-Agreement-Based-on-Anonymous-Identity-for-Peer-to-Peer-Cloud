<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Cloud Efficiency</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style26 {font-size: 16px}
.style27 {color: #FFFF00}
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
        <h2>All Clouds Efficiency</h2>
        <p><%@ include file="connect.jsp" %>
		<%@ page import="java.util.*" %>
		<%
        
     try 
	    {
      	 ArrayList a1=new ArrayList();
      		
     		 
           
            String query1="select * FROM server"; 
            Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(query1);
           
 	   while ( rs1.next() )
 	   {
 			a1.add(rs1.getString("username"));
 		
 	   }
      		
        
		
		   %> </p>
		   
          <p><form action="cloudEfficiency1.jsp" method="post" name="form1">
  <div align="center" class="style1">  
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="372" border="0">
     
     
      <tr>
        <td width="197" bgcolor="#FF0000"><div align="center" class="style8 style26 style27">Select The Cloud </div></td>
        <td width="165"><label>
          
            <div align="left">
              <select name="t3">
                  <option>--Select--</option>
                <% for(int l=0;l<a1.size();l++)
        	  {
        	  %>
                  <option><%= a1.get(l)%></option>
                
                  <%}%>
              </select>
            </div>
            </label></td>
      </tr>
     
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <input type="submit" name="Submit" value=" View ">
        </label></td>
      </tr>
    </table>
    <p>&nbsp;    </p>
  </div>
</form><%

 connection.close();
          }catch(Exception e)
          {
            out.println(e.getMessage());
          }%></p>
       
        
        
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
