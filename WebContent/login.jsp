<!-- <!DOCTYPE html>
<html>
<head>
<title>login</title>
</head>
<body>
<div style="margin-top:15%">
<center>
<form action="login" method="post">
<label>UID</label>
<input type="text" name="uid" placeholder="enter uid">
<br><label>Password</label>
<input type="password" name="pwd" placeholder="enter passwoord">
<button type="submit">submit</button>
</center>
</div>
</form>
</body>
</html>-->
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;background-color:rgba(0,0,0, 0.9)}
form {border: 3px solid rgba(0,0,0, 0.9);}

input[type=text], input[type=password] {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 20%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<title>LOGIN</title>
<body>
<center>
<h1><font color="white" face="microsoft jhenghei">HOSTEL MANAGEMENT SYSTEM</font></h1>
</center>
<form action="login" method="post">
  <div class="imgcontainer">
    <img src="assets\profile.jpg" alt="Avatar" class="avatar" >
  </div>
<center>
  <div class="container">
    <label for="uname"><b><font color="white" face="microsoft jhenghei">Uid&nbsp&nbsp</font></b></label>
    <input type="text" placeholder="Enter Username" name="uid" required>
<br><div style="margin-left:-55px">
    <label for="psw"><b><font color="white" face="microsoft jhenghei">Password&nbsp&nbsp</font></b></label>
    <input type="password" placeholder="Enter Password" name="pwd" required>
     </div><div style="margin-left:35px">   
    <button type="submit">Login</button><br></div>
    <label>
      <input type="checkbox" checked="checked" name="remember"><font color="white" face="microsoft jhenghei"> Remember me</font>
    </label>
  </div>
</center>
   
</form>

</body>
</html>
