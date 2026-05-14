<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner Register</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style13 {color: #FF0000; font-weight: bold; }
.style15 {color: #FF0000; font-size: 14px; font-weight: bold; }
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
        <h2>User Registration   </h2>
       
        
        
        <p>
		<form action="insertData.jsp" method="post" id="sendemail" enctype="multipart/form-data">
		<table width="519" border="0">
                <tr>
                  <td width="211" height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15">User Name  (required)</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                  <td width="298"><input type="text" id="userid" name="userid" class="text" /></td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15">Password (required)</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                  <td><input type="password" id="password" name="pass" class="text" /></td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15">Email Address (required)</div>
                    <span class="style15">
                    </label>                  
                    </span></td>
                  <td> <input id="email" name="email" class="text" /></td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00"><div align="center" class="style15">Mobile Number (required)</div></td>
                  <td><input id="mobile" name="mobile" class="text" /></td>
                </tr>
                <tr>
                  <td height="70" bgcolor="#FFFF00"><div align="center" class="style15">Your Address</div></td>
                  <td> <textarea id="address" name="address" rows="3" cols="40"></textarea></td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00"><div align="center" class="style15">Date of Birth (required)</div></td>
                  <td>   <input id="dob" name="dob" class="text" /></td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00"><div align="center" class="style15">Select Gender (required)</div></td>
                  <td> <select id="s1" name="gender" style="width:300px;" class="text">
                              <option>--Select--</option>
                              <option>MALE</option>
                              <option>FEMALE</option>
                </select>				</td>
                </tr>
				<tr>
                  <td height="40" bgcolor="#FFFF00"><div align="center" class="style15">Select Cloud (required)</div></td>
                  <td> <select id="cloud" name="cloud" style="width:300px;" class="text1">
                              <option>--Select--</option>
                              <option>Cloud1</option>
                              <option>Cloud2</option>
							  <option>Cloud3</option>
                </select>				</td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00"><div align="center" class="style15">Enter Pincode (required)</div></td>
                  <td><input id="pincode" name="pincode" class="text" /></td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00"><div align="center" class="style15">Select Profile Picture (required)</div></td>
                  <td><input type="file" id="pic" name="pic" class="text" /></td>
                </tr>
                <tr>
                  <td height="88"></td>
                  <td><div align="right">
                    <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
                  </div></td>
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
