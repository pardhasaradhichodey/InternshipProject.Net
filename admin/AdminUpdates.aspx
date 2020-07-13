<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUpdates.aspx.cs" Inherits="WebApplication1.admin.AdminUpdates" %>

<html>
<head>
<title>administrator updates</title>
<style>
body{
background-image:url("updates1.jpg");
/* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.button {
  background-color: #4CAF50;
  border:none;
  color: white;
  padding: 15px 25px;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
}
a{
color:white;
}
h1 {
font-size: 15pt;
color: #20bcd5;
text-align: center;
padding: 18px 18px 18px 0;
margin: 0 0 10px 0;
}
h1 span {
border: 4px dashed blue;
-webkit-border-radius:15px;
padding: 10px;
background-color:white;
}
</style>
</head>
<body >
<h1 align="center"><span>Theatre Updations</span></h1>
<button class="button"><a href="">Add Theatre</a></button>
<button class="button"><a href="">Update Theatre</a></button>
<button class="button"><a href="">Delete Theatre</a></button>
<h1 align="center"><span>City Updations</span></h1>
<button class="button"><a href="">Add City</a></button>
<button class="button"><a href="">Update City</a></button>
</body>
</html>