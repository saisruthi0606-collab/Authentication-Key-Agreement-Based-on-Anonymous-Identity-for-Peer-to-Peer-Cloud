<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Mobile Terminal Login Page</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style15 {
	color: #333333;
	font-size: 20px;
}
.style17 {
	color: #FF0000;
	font-size: 15px;
	font-weight: bold;
}
.style18 {font-size: 15px}
.style19 {
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
    <li class="active"><a href="MobileTerminalLogin.jsp">Mobile Terminal</a></li>
    <li><a href="dataOwnerLogin.jsp">User</a></li>
    <li><a href="cloudServerLogin.jsp">CloudServer</a></li>
    <li><a href="aboutProject.html">AboutProject</a></li>
  </ul>
</div>
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
        <h2>Mobile Terminal  Login Page   </h2>
       
        <p>
		<form action="authentication.jsp?type=<%="master"%>" method="post" id="leavereply">
		<table width="64%" height="132" border="0" align="center">
      <tr>
        <td width="54%" height="35"><div align="left" class="style15 style18 style19">
          <div align="center">Mobile Terminal   Name</div>
        </div></td>
        <td width="46%" height="35">
          <div align="center">
            <input type="text"  name="userid" size="15">
          </div></td>
      </tr>
      <tr>
        <td width="54%" height="38"><div align="left" class="style17">
          <div align="center">Password</div>
        </div></td>
        <td width="46%" height="38">
          <div align="center">
            <input type="password"  name="pass" size="15">
          </div></td>
      </tr>
      <tr>
        <td height="44" colspan="2">
        <p align="center"><input type="submit"  value="Login" name="B1">&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" name="B2"></td>
      </tr>
    </table>
	</form>
        </p>
        
        
      </div>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>
    <li><a href="index.html">Home</a></li>
    <li><a href="vertualMasterLogin.jsp">Mobile Terminal</a></li>
    <li><a href="dataOwnerLogin.jsp">User</a></li>
    <li><a href="cloudServerLogin.jsp">CloudServer</a></li>
    <li><a href="aboutProject.html">AboutProject</a></li>
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
