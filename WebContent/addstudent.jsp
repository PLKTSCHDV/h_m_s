<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="chitkara.dao.Userdao"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Userdao user=(Userdao)session.getAttribute("user");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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

<div class="col-sm-11">

	<div class="container">
		<div class="header">
		<h1 style="margin-top: 14%;margin-left: 7%;">ADD USER</h1><br>
		</div>
        	<form class="form-horizontal" action="addstudent" method="post" style="margin-top: 4%;width:70%;">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Id:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="namef" placeholder="College Id" name="id" >
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">First Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="namel" placeholder="First Name" name="Fn" >
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Last Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="namef" placeholder="Last Name" name="Ln" >
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Uid:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="namef" placeholder="Uid" name="uid" >
        </div></div>
        
         <div class="form-group">
      <label class="control-label col-sm-2" for="email">Father's name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="namef" placeholder="Father's name" name="Father_name" >
        </div></div>
        
         <div class="form-group">
      <label class="control-label col-sm-2" for="email">Mother's name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="namef" placeholder="Mother's name" name="Mother_name" >
        </div></div>
        
         <div class="form-group">
      <label class="control-label col-sm-2" for="email">Mobile no:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="namef" placeholder="Mobile no" name="Mobile_no" >
        </div></div>
        
         <div class="form-group">
      <label class="control-label col-sm-2" for="email">Father's mobile no:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="namef" placeholder="Father's mobile no" name="Father_mobile_no" >
        </div></div>
        
         <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="namef" placeholder="Email" name="Email" >
        </div></div>
    
         <div class="form-group">
      <label class="control-label col-sm-2" for="email">DOB:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="namef" placeholder="Enter dob in dd--mm--yyyy" name="Dob" >
        </div></div>
        
         <div class="form-group">
      <label class="control-label col-sm-2" for="email">Address:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="namef" placeholder="Full Address" name="Address" >
        </div></div>
        <button type="submit" class="btn btn-primary" style="margin-top:5%;margin-left:50%;">Submit</button>
        <br>
        <br>
</form>
        
        
      
</div>
<div class="row">

  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Do you really want to submit</h4>
        </div>
        <div class="modal-body">
          <button type="submit" class="btn btn-success" >YES</button>
          <button type="submit" class="btn btn-danger" data-dismiss="modal">NO</button>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

</div>

</div>

	</div>
</div>
</div>
<footer class="footerx">
<center>Build By - PULKIT SACHDEVA <br>
<h6>2019 All copyrights &copy reserved </h6>
</center>
</footer>
<br><br><br>
</body>
</html>