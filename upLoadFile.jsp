<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>File UpLoad</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style22 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
<script language="javascript" type='text/javascript'>
        function loadFileAsText()
    {
	    var fileToLoad = document.getElementById("file").files[0];
	    var fileReader = new FileReader();
	    fileReader.onload = function(fileLoadedEvent) 
    {
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	    fileReader.readAsText(fileToLoad, "UTF-8");
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
        <h2 class="style22">Upload Data...</h2>
       
        <p>
		
        </p>
        
        
       
      </div>
	     <p>
	  <form id="form1" name="form1" method="post" action="upLoadFile1.jsp">
    <table width="519"  border="1.5"  cellpadding="0" cellspacing="0">
             <tr>
              <td width="152" height="37" bgcolor="#FFFF00"><div align="center" class="style22"><span class="style2 style3">Select File </span></div></td>
              <td width="361"><div align="center">
                <input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" />
              </div></td>
             </tr>
             <tr>
              <td height="34" bgcolor="#FFFF00" class="style4 style2 style3"><div align="center" class="style22">File Name </div></td>
              <td><div align="center">
                <input required="required" name="tt" type="text" id="t42" size="40"/>
              </div></td>
             </tr>
             <tr>
              <td height="258" bgcolor="#FFFF00">&nbsp;</td>
              <td><div align="center">
                <textarea name="text" id="textarea" cols="40" rows="15"></textarea>
              </div></td>
             </tr>
             
             <tr>
              <td height="42" bgcolor="#FFFF00"><div align="right"></div></td>
              <td><input type="submit" name="Submit" value="Encrypt" /></td>
             </tr>
        </table>
      </form>
		  </p>
		  
          <p><a href="dataOwnerMain.jsp">Back</a></p>
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
