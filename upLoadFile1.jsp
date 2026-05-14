<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>File UpLoad</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style23 {color: #FF0000; font-weight: bold; }
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
        <h2>Upload Data...</h2>
       
        <p>
		
        </p>
        
        
       
      </div>
	     <p>
	   <%@ include file="connect.jsp" %>
 
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 

<%

    try 
	{
      		String file=request.getParameter("tt");
      		String cont=request.getParameter("text");
      		String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		String filename="filename.txt";
      		
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue,"AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE,key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
      		
      		PrintStream p = new PrintStream(new FileOutputStream(filename));
			p.print(new String(cont));
			
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
		
      <form id="form1" name="form1" method="post" action="upLoadFile2.jsp">
    <table width="519"  border="1.5"  cellpadding="0" cellspacing="0">
             
             <tr>
              <td height="34" bgcolor="#FFFF00" class="style4 style2 style3"><div align="center" class="style23">File Name </div></td>
              <td><div align="center">
                 <input name="t1" type="text" id="t42" size="50" value="<%= file %>" readonly="readonly" />
              </div></td>
             </tr>
             <tr>
              <td height="258" bgcolor="#FFFF00">&nbsp;</td>
              <td><div align="center">
                <textarea name="t2" cols="50" rows="15" readonly><%= encryptedValue %></textarea>
              </div></td>
             </tr>
			 <tr>
              <td height="34" bgcolor="#FFFF00" class="style4 style2 style3"><div align="center" class="style23">Authentication Code </div></td>
              <td><div align="center">
                 <input name="t3" type="text" id="t42" size="50" value="<%= h1 %>" readonly="readonly" />
              </div></td>
             </tr>
             <tr>
              <td height="42"><div align="right"></div></td>
              <td><input type="submit" name="Submit" value="Upload" /></td>
             </tr>
        </table>
      </form>
		  <%

	   

           connection.close();
     }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
		  
		  
%>
		  </p>
		  
          <p><a href="upLoadFile.jsp">Back</a></p>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>
    <li><a href="dataOwnerMain.jsp">Data Owner Main </a></li>
    <li><a href="dataOwnerLogin.jsp">Log Out </a></li>
   
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
