<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="chitkara.dao.Userdao"%>
<%@page import="chitkara.dao.NoticeDao"%>
<%NoticeDao notice=(NoticeDao)session.getAttribute("notice"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:useBean id="c1" class="chitkara.operation.NoticeOperation"></jsp:useBean>

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

<div class="container" style="background-color:rgba(0,0,0, 0.9);position:fixed;width:100%;z-index:5">
<font color="white" >
<form class="form-logout" role="form" action="login.jsp">
   <input type="submit" value="Logout" id="logout" class="btn btn-light" style="float:right;margin-top:1%;background-color:red;font-color:red">
</form>
<span style="font-size:30px;cursor:pointer;" onclick="openNav()"><font color="white" ><div class="m">&#9776;</div></font>
</span><center><h1 style="margin-top:-30px">HOSTEL MANAGEMENT SYSTEM</h1></center></font>
</div>

<div class="row">
<div class="col-sm-1">
<div id="myNav" class="overlay" style="margin-top:2%">
  
  <div class="overlay-content">
    <a href="main.jsp">Home<i class="glyphicon glyphicon-home" style="margin-left:20%"></i></a>
    <a href="profile.jsp">Profile<i class="glyphicon glyphicon-user" style="margin-left:20%"></i></a>
    <a href="something.jsp">Complaints<i class="glyphicon glyphicon-info-sign" style="margin-left:10%"></i></a>
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
<br><br><br>
<br><br><br><br>
<div >
  <h1>Notices</h1>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Notice No</th>
        <th>Notice</th>
        <th>Subject</th>
        <th>Date</th>
        
      </tr>
    </thead>
    <tbody>
    <% ResultSet rs=c1.showNotice();
                
 
                 while(rs.next()){
             %>
 
      <tr>
        <th><%=rs.getString("notice_no")%></th>
        <td><%=rs.getString("notice")%></td>
        <td><%=rs.getString("subject")%></td>
        <td><%=rs.getString("date")%></td>
      </tr>
      <%} %>      
    </tbody>
  </table>
  
</div>
</div>
</div>

<div class="container" style="margin-left:15%;width:72%">
  <h2>Glipmse to our hostel</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
    <div class="carousel-inner">

      <div class="item active">
        <img src="assets\pic.jpg" alt="chitkara" style="width:100%;">
        <div class="carousel-caption">
          <h3>Hostel</h3>
          <p>Description</p>
        </div>
      </div>

      <div class="item">
        <img src="assets\pic2.jpg" alt="chitkara" style="width:100%;">
        <div class="carousel-caption">
          <h3>Hostel</h3>
          <p>Description</p>
        </div>
      </div>
    
      <div class="item">
        <img src="assets\pic3.jpg" alt="chitkara" style="width:100%;">
        <div class="carousel-caption">
          <h3>Hostel</h3>
          <p>Description</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<footer class="footerx"  style="width=100%;align-content: center;z-index:5">

Build By - PULKIT SACHDEVA <br>
<h6>2019 All copyrights &copy reserved</h6> 

</footer>
<br><br><br>
</body>
</html>