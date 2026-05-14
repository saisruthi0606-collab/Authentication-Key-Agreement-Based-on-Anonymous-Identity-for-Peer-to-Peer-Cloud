<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Server Main Page</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style19 {color: #00C6FF}
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
    <li class="active"><a href="cloudServerLogin.jsp" class="first">CloudServer</a></li>
    <li><a href="aboutProject.html">AboutProject</a></li>
  </ul>
</div>
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
        <h2>WelCome To <span class="style19"><%=(String)application.getAttribute("cloud")%></span> Server Main </h2>
        <p align="center"><img src="images/Cloud.png" width="417" height="318" /></p>
        <p>
	
        </p>
        
        
      </div>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>
    <li><a href="viewAllUser.jsp">View all Users</a></li>
	 <li><a href="viewFile.jsp">View all Data Files </a></li>
	 <li><a href="viewMFile.jsp">View all Migrated File</a></li>
    <li><a href="allCloudTransactions.jsp">View all transactions</a></li>
    <li><a href="attacker.jsp">View all attackers</a></li>
	 <li><a href="ViewTD.jsp">View Time Delay Results</a></li>
	  <li><a href="ViewTPT.jsp">View Throughput Results</a></li>
	<li><a href="cloudServerLogin.jsp">Log Out</a></li>
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
