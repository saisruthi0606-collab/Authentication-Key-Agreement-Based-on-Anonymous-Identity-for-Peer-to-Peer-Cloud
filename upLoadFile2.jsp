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
 <%@ include file="connect.jsp" %>
 <%@ page import ="java.util.Date,java.util.Random" %>
 <%@ page import ="java.text.SimpleDateFormat" %>
 <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>


<%

    try 
	{      
			long stime=System.currentTimeMillis();
	 
	        String file=request.getParameter("t1");
      		String cont=request.getParameter("t2");
			String mac=request.getParameter("t3");
			
			String owner=(String)application.getAttribute("owner");
			
			String cname,strDate,strTime,dt,rank,task1,attack,str1,str2,str3;
			int task=0,task11=0;
	
	        String sql="SELECT * FROM server order by task DESC LIMIT 0,1";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			while(rs.next())
			{
			 cname=rs.getString(2);
			 task=rs.getInt(4);
			
		    if(task>0)
			{
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();

			 strDate = sdfDate.format(now);
			 strTime = sdfTime.format(now);
			 dt = strDate + "   " + strTime;
			
      	    	
				 rank = "0";
				 task1 = "Upload";
				 attack = "0";
				 
				 KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
				 KeyPair kp = kg.generateKeyPair();
				Key pubKey = kp.getPublic();
				byte[] pub = pubKey.getEncoded();

				String pk = String.valueOf(pub);
				
	String str11 = "insert into transaction(cloud,user,fname,task,dt) values('"+cname+"','"+owner+"','"+file+"','"+task1+"','"+dt+"')";
	connection.createStatement().executeUpdate(str11);
				
    String str12 = "insert into  vmfiles(cloud,owner,fname,ct,mac,rank,dt,sk) values ('"+cname+"','"+owner+"','"+file+"','"+cont+"','"+mac+"','"+rank+"','"+dt+"','"+pk+"')"; 
	connection.createStatement().executeUpdate(str12);
	  
    String str13 = "insert into  vmfiles11(cloud,owner,fname,ct,mac,rank,dt,sk) values ('"+cname+"','"+owner+"','"+file+"','"+cont+"','"+mac+"','"+rank+"','"+dt+"','"+pk+"')"; 
	connection.createStatement().executeUpdate(str13);
	
	task11=task-1;
	String query3 ="update server set task='"+task11+"' where username='"+cname+"' ";
	connection.createStatement().executeUpdate (query3);
	
	
					long etime=System.currentTimeMillis();
					long ttime = etime-stime;
					long tpt=((cont.length())/ttime)*1024;
					
					Statement st1=connection.createStatement();
					st1.executeUpdate("insert into  results values ('"+file+"','"+ttime+"','"+tpt+"')"); 
		
	
	
	  
%>
		<h2 class="style22">Data Uploaded Successfully...</h2>
		<p>  <a href="dataOwnerMain.jsp">BACK</a></p>
<%

			}
			else
			{
			
			    Random r = new Random();
                 str1= String.valueOf(r.nextInt(20));
	   	         str2= String.valueOf(r.nextInt(20));
		         str3= String.valueOf(r.nextInt(20));
				 
		         Statement st1 = connection.createStatement();
       		String query1 ="update server set task='"+str1+"' where username='cloud1' ";
			String query2 ="update server set task='"+str2+"' where username='cloud2' ";
			String query3 ="update server set task='"+str3+"' where username='cloud3' ";
	   		st1.executeUpdate (query1);
			st1.executeUpdate (query2);
			st1.executeUpdate (query3);
	   		connection.close();
			%>
		  <h3>File Not Uploaded Please Upload </h3>
		    <form id="form1" name="form1" method="post" action="upLoadFile2.jsp?t1=<%=file%>&t2=<%=cont%>&t3=<%=mac%>">
		      <label>
		        <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
	          </label>
            </form>
		    <p></p>
		  <%	

			}}
	        connection.close();
          }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
		  
	%>
   </p>
        
      </div>
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
