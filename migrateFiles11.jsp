<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Migrate Files</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style22 {
	color: #00BFF5;
	font-size: 28px;
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
      
       
       
        
       
        <p> <h2>Migrate File <span class="style22"><%=request.getParameter("fname")%></span></h2></p>
        <p>
	  
	    
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%

  try 
	 {
	 
	 String cname = request.getParameter("t3");
	 String fname = request.getParameter("fname");
	 
     String cloud=null,owner=null,fname1=null,ct=null,mac=null,rank=null,dt=null,sk=null;
	 
     String query1="select * FROM vmfiles where fname='"+fname+"'"; 
     Statement st1=connection.createStatement();
     ResultSet rs1=st1.executeQuery(query1);
           
 	if ( rs1.next()==true )
 	   {
	   
	   int id = rs1.getInt(1);
	  cloud=rs1.getString(2);
	  owner=rs1.getString(3);
	  fname1=rs1.getString(4);
	  ct=rs1.getString(5);
	  mac=rs1.getString(6);
	  rank=rs1.getString(7);
	  
	   String query2="select * FROM dataowner where username='"+owner+"' and cloud='"+cname+"'"; 
     Statement st2=connection.createStatement();
     ResultSet rs2=st2.executeQuery(query2);
	 
	 if(rs2.next()==true)
	 {
	 
	 
	        SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			 dt = strDate + "   " + strTime;
			 
			    KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
				KeyPair kp = kg.generateKeyPair();
				Key pubKey = kp.getPublic();
				byte[] pub = pubKey.getEncoded();
				String pk = String.valueOf(pub);
	  
	   String str1 = "insert into  migratedfiles(id,fromcloud,tocloud,owner,fname,ct,mac,rank,dt,sk) values ('"+id+"','"+cloud+"','"+cname+"','"+owner+"','"+fname1+"','"+ct+"','"+mac+"','"+rank+"','"+dt+"','"+pk+"')"; 
	   
	   
	connection.createStatement().executeUpdate(str1);
      		
        
				String sql1="update  vmfiles set cloud='"+cname+"' where id='"+id+"'";
		    	connection.createStatement().executeUpdate(sql1);
			
					String sql2="update  vmfiles set cloud='"+cname+"' where id='"+id+"' ";
			        connection.createStatement().executeUpdate(sql2);
					
					String sql3="delete FROM attacker where id='"+id+"'";
			        connection.createStatement().executeUpdate(sql3);
			
		  }
		  
		  else
		  {
		  out.print("You cannot MIGRATE,You are not Registered in ");%><%=cname%><%
		  }
		  
		 
       }

          }
		  catch(Exception e)
          {
            out.println(e.getMessage());
          }%>
		  
        </p>
  
  
          <p><a href="migrateFiles.jsp">Back</a>           </p>
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
