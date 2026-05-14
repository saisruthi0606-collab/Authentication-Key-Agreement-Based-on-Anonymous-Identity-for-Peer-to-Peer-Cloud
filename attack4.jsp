<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attacker</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style19 {color: #666666}
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
 
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 
 <%@ page import="java.text.SimpleDateFormat,java.util.Date"%>

		  <%
		  try
		  {
		  String id=(String)application.getAttribute("id");
		  String owner = request.getParameter("t3");
		  String cloud = request.getParameter("t4");
		  String fname = request.getParameter("t1");
		  String cont = request.getParameter("text");
		  String td = request.getParameter("t5");
	      String attacker = request.getParameter("t2");
	     
		 
	      
		  
		  
		  
		    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + " " + strTime;
		  
		  	String str = "update vmfiles11 set ct='"+cont+"',mac='"+td+"' where fname='"+fname+"'   ";
			connection.createStatement().executeUpdate(str);
			
			String str1 = "select * from server where username='"+cloud+"' ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(str1);
			if(rs.next())
			{
			 int i=rs.getInt(5);
			 int j=i+1;
			 
			String str3 = "update server set attack='"+j+"' where username='"+cloud+"'   ";
			connection.createStatement().executeUpdate(str3);
			
				}
				

			String str2 = "insert into attacker(id,owner,cloud,fname,content,trapdoor,attacker,dt) values('" + id + "','" + owner + "','" + cloud + "','" + fname + "','" + cont + "','" + td + "','" + attacker + "','" + dt + "')";
			connection.createStatement().executeUpdate(str2);
%><h2>File Attacked</h2>
		  <p>
		    <%
		  
		  }
		  catch(Exception e)
		  {
		  out.println(e.getMessage());
		  }
		  %>
	    </p>
	    </p>
		  <p align="right"><a href="attack1.jsp">Back</a> </p>
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
