<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="chitkara.dao.Userdao"%>
<%@page import="chitkara.dao.ComplaintDao"%>
<%ComplaintDao complaint=(ComplaintDao)session.getAttribute("complaint"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<jsp:useBean id="c1" class="chitkara.operation.ComplaintOperation"></jsp:useBean>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.minr"> n</script>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<title>HOSTEL MANAGEMENT SYSTEM</title>
<style>


.m
{
margin-top:10px;
}
body
{
background-color:white;
    overflow-x: hidden;
}

.overlay {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.9);
  overflow-x: hidden;
  transition: 0.5s;
}

.overlay-content {
  position: relative;
  top: 25%;
  width: 100%;
  text-align: center;
  margin-top: 30px;
}

.overlay a {
  padding: 8px;
  text-decoration: none;
  font-size: 36px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.overlay a:hover, .overlay a:focus {
  color: #f1f1f1;
}

.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
}

@media screen and (max-height: 450px) {
  .overlay a {font-size: 20px}
  .overlay .closebtn {
  font-size: 40px;
  top: 15px;
  right: 35px;
  }
}
.footerx {
   position: fixed;
   bottom: 0;
   width: 100%;
   background-color: rgba(0,0,0, 0.9);
   color: white;
   text-align: center;
    z-index: 2;
}

</style>
</head>

<body>

<div class="container-fluid" style="background-color:rgba(0,0,0, 0.9);position:fixed;width:100%;z-index:10;">
<font color="white"><form class="form-logout" role="form" action="login.jsp">
   <input type="submit" value="Logout" id="logout" class="btn btn-light" style="float:right;margin-top:1%;background-color:red;font-color:red">
</form>
<span style="font-size:30px;cursor:pointer;" onclick="openNav()"><font color="white" ><div class="m">&#9776;</div></font>
</span><center><h1 style="margin-top:-30px">HOSTEL MANAGEMENT SYSTEM</h1></center></font></div>
<div class="row">
<div class="col-sm-1">
<div id="myNav" class="overlay" style="margin-top:2%">
  
  <div class="overlay-content">
    <a href="admin.jsp">Home<i class="glyphicon glyphicon-home" style="margin-left:20%"></i></a>
    <a href="addstudent.jsp">Add Student<i class="glyphicon glyphicon-user" style="margin-left:20%"></i></a>
    <a href="addnotice.jsp">Add Notice<i class="glyphicon glyphicon-user" style="margin-left:20%"></i></a>
    <a href="showcomplaint.jsp">Show Complaints<i class="glyphicon glyphicon-info-sign" style="margin-left:10%"></i></a>
    <a href="showusers.jsp">Show All Users<i class="glyphicon glyphicon-info-sign" style="margin-left:10%"></i></a>
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="margin-top:35%"><i class="glyphicon glyphicon-chevron-left"></i></a>  
  </div>
</div>

<script>
function openNav() {
  document.getElementById("myNav").style.width = "50%";
}

function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}

</script>
</div>

</div>
<div class="row">
<div class="col-sm-9" style="margin-top:85px">
<br><br>
 <table class="table table-borderless ">
             
    <thead>
      <tr>
   <th><h1>Complaints ::</h1></th></tr><tr>
 <% ResultSet rs=c1.showComplaint();
                
 
                 while(rs.next()){
             %>
        <th>Complaint No.</th>
        <td>:<%=rs.getString("complaint_no")%></td>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>Uid</th>
        <td>:<%=rs.getString("uid")%></td>
        
      </tr>
      <tr>
        <th>Complaint</th>
        <td>:<%=rs.getString("complaint")%></td>
        
      </tr>
      <tr>
       <th>Date</th>
        <td>:<%=rs.getString("date")%></td>
      </tr>
    <tr>
    <th></th>
    <td>
    <% 
    if(rs.getString("status").equalsIgnoreCase("pending"))
    {
    %>
    <a href="decline?complaint_no=<%=rs.getString("complaint_no") %>"><button class="btn btn-danger" style="float:right">Decline</button></a>
    <a href="approve?complaint_no=<%=rs.getString("complaint_no") %>"><button class="btn btn-success" style="float:right">Approve</button></a>
    <%} 
    else
    	if(rs.getString("status").equalsIgnoreCase("declined"))
    	{
   %>
   <button class="btn btn-danger" style="float:right" disabled>Declined</button>
   <%} 
    	else
    		if(rs.getString("status").equalsIgnoreCase("approved"))
    		{%>
    		<button class="btn btn-success" style="float:right" disabled>Approved</button>
    	<% }
   %>
    </td>
    </tr>
      <% } %>             
                
      
    </tbody>
  </table>
</div>
<div class="col-sm-2" style="margin-top:85px;">
<div class="container">
<div class="card" style="width:400px;position:fixed;">
<div class="card-body">
<div class="card-img-top"><img src="assets\profile.jpg" style="width:75%;margin-top:25%"></div>
<div class="card-title">NAME</div>
</div>
</div>
</div>
</div>

</div>
<div class="col-sm-1"></div>
</div>
<div class="row">
<footer class="footerx">
<center>Build By - PULKIT SACHDEVA <br>
<h6>2019 All copyrights &copy reserved </h6>
</center>
</footer>
</div>
<br><br>
</body>

</html>