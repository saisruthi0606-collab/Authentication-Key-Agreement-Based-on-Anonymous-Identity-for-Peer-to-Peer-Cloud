<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search File</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style22 {color: #FFFF00}
-->
</style>
<script type='text/javascript'>
        function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}
</script>
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
        <h2>Search File </h2>
       
   
        <p>
		
	  <%@ include file = "connect.jsp" %>
	  <%@ page import = "java.util.Date" %>
	  <%@ page import = "java.security.Key" %>
	  <%@ page import = "java.text.SimpleDateFormat" %>
	  <%@ page import = "org.bouncycastle.util.encoders.Base64"%>
	  <%@ page import = "javax.crypto.spec.SecretKeySpec,javax.crypto.Cipher" %>
	  
	 
		 <%
		  
		    	try 
				{
			
				String id =(String) application.getAttribute("id");
				String a = (String)application.getAttribute("a");
				String t2 = request.getParameter("t2");
                String file,ct,rank;
				int i=0,j=0;
			String str = "select * from vmfiles where id='"+id+"' ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(str);
			while(rs.next())
			{
			file = rs.getString(4);
			ct = rs.getString(5);
				String sk = rs.getString(9);
			j = rs.getInt(7);
			
			i = j+1;
			
			
		    String decryptedValue = new String(Base64.decode(ct.getBytes()));	
			
			String str1 = "update vmfiles set rank='"+i+"' where id='"+id+"'";
			connection.createStatement().executeUpdate(str1);
				
		if(t2.equalsIgnoreCase(sk))
		{
			%>
			
		
        <table width="478" border="0" align="center">
              <tr>
                <td width="223" height="51" bgcolor="#FF0000"><span class="style5 style22">Enter File Name </span></td>
                <td width="245"><label>
                  <input required name="t1" type="text" value="<%=file%>" size="40" />
                </label></td>
              </tr>
             
              <tr>
                <td height="35" bgcolor="#FF0000"><span class="style5 style22">File Content</span></td>
                <td><textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><div align="right"></div></td>
                <td><label>
                  <button onClick="saveTextAsFile()">Download</button>
                </label></td>
              </tr>
        </table>
         
			
			    
	 
			        </p>
		<%
		}
		else
		{
		out.print("Secret Key MisMatch ");
		}
		}
		if(a.equalsIgnoreCase("a"))	
		{	
		%>	
        <p><a href="searchFile.jsp">Back</a></p>
      <%
	  }
	  else
	  {
	  %>
	   <p><a href="viewOwnerFile.jsp">Back</a></p>
	  <%
	  }
	  	
			
	
					
		
					
	
	 
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%> 		  
			    
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
