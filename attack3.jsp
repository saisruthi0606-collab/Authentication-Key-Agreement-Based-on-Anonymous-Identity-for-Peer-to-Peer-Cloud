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
.style20 {color: #FFFF00}
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
		try{
		
		
	String fname=request.getParameter("fname");
	String attacker=request.getParameter("aname");
	String cloud=request.getParameter("cname");
	String owner=request.getParameter("oname");
	String cont=request.getParameter("text");
	
	String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		String filename="filename.txt";
	
      			      		
	String encryptedValue = new String(Base64.decode(cont.getBytes()));
      		
      		PrintStream p = new PrintStream(new FileOutputStream(filename));
			p.print(new String(encryptedValue));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h1 = bi1.toString(16);
			
      		
		
      		
	
%>
	    <form action="attack4.jsp" method="post">
		  		<table width="598"   border="1.5"  cellpadding="0" cellspacing="0">

            <tr>
              <td width="189" height="35" bgcolor="#FF0000"><div align="center" class="style20">File Name  </div></td>
              <td width="403"><div align="center">
                <input name="t1" type="text" id="t42" size="50" value="<%= fname %>" readonly="readonly" />
              </div></td>
            </tr>
			<tr>
              <td width="189" height="35" bgcolor="#FF0000"><div align="center" class="style20"><span class="style1">Ur Name </span></div></td>
              <td width="403"><div align="center">
                <input name="t2" type="text" id="t42" size="50" value="<%= attacker %>" readonly="readonly" />
              </div></td>
            </tr>
			<tr>
              <td width="189" height="35" bgcolor="#FF0000"><div align="center" class="style20"><span class="style1">Owner Name</span></div></td>
              <td width="403"><div align="center">
                <input name="t3" type="text" id="t42" size="50" value="<%= owner %>" readonly="readonly" />
              </div></td>
            </tr>
			<tr>
              <td width="189" height="35" bgcolor="#FF0000"><div align="center" class="style20"><span class="style1">Cloud Name</span></div></td>
              <td width="403"><div align="center">
                <input name="t4" type="text" id="t42" size="50" value="<%= cloud %>" readonly="readonly" />
              </div></td>
            </tr>
            <tr>
              <td height="261" bgcolor="#FF0000">&nbsp;</td>
              <td><div align="center">
                <textarea name="text" cols="50" rows="15" readonly><%= cont %></textarea>
              </div></td>
            </tr>
            <tr>
              <td height="35" bgcolor="#FF0000"><div align="center" class="style20">Authenticated Key </div></td>
              <td><div align="center">
                <input name="t5" type="text" id="t4" size="50" value="<%= h1 %>" readonly="readonly" />
              </div></td>
            </tr>
            <tr>
              <td><span class="style19"></span></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><div align="right"><span class="style19"></span>
              </div></td>
              <td><input type="submit" name="Submit2" value="Attack" /></td>
            </tr>
          </table>
	    </form>
		  <p>
		    <%

	   

           connection.close();
     }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
		  
		  
%>
        </p>
		    
		    
		    
	        </p>
         
          <p>&nbsp;</p>
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
