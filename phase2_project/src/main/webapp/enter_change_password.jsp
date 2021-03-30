<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
body {
	background-image: url("https://wallpaperaccess.com/full/254391.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
	
} </style>
</head>
<body >
	<form action="change_password.jsp" method="post"> 
	<div align="center" class="center">
  <table>
    <tr>
      <td align="right">Username</td>
      <td align="left"><input type="text" name="name" placeholder="Enter Username"/></td>
    </tr>
    <tr>
      <td align="right">Password</td>
      <td align="left"><input type="text" name="password1" placeholder="Enter Old Password"/></td>
    </tr>
    <tr>
      <td align="right">New Password</td>
      <td align="left"><input type="text" name="password2" placeholder="Enter New Password" /></td>
    </tr>
   
    <tr>
      <td align="right"></td>
      <td align="left"><input type="submit" value="Change Password" /></td>
    </tr>
  </table>
  </div>
</form>
</body>
</html>