<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.admin.admin" %>
<!DOCTYPE html>
<html>
<head>
<title>Administrative Login</title>
<style>
body{
background-image:url("adminloginimg.jpg");
 /* Full height */
  height: 70%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size:cover;
}
div {
  width: 300px;
  border: 5px solid blue;
  border-radius:25px;
  padding:20px;
  margin-left: 575px;
  margin-top:50px;
}
</style>
<script>
function myFunction() {
  var user=document.getElementById("user").value;
  var password=document.getElementById("pwd").value;
  if(user.localeCompare("admin@gmail.com")==0&&password.localeCompare("sasi1234")==0)
  location.replace("AdminUpdates.aspx")
  else
  alert("wrong details")
  
}
</script>
</head>
<body>
<div>
<h1 align="center">Administrator Login</h1>
<table align="center">
<tr>
<td>email:</td>
<td><input type="email" name="email" placeholder="enter email" id="user"></td>
</tr>
<tr>
<td>password:</td>
<td><input type="password" name="password" placeholder="enter password" id="pwd"></td>
<tr><td colspan=2 align="center"><button onclick="myFunction()">submit</button></td></tr>
</table>
<p></p>
</div>
</body>
</html>

