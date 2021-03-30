<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.center{
margin:auto;
width: 60%;
padding: 10%;
}
body {
	background-image: url("https://wallpaperaccess.com/full/254391.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
}
</style>
</head>
<body>
<form action="add_details" method="post"> 
	<div align="center" class="center">
  <table>
    <tr>
      <td align="right">Name</td>
      <td align="left"><input type="text" name="name" /></td>
    </tr>
    <tr>
      <td align="right">Age</td>
      <td align="left"><input type="int" name="age" /></td>
    </tr>
    <tr>
      <td align="right">Gender</td>
      <td align="left"><input type="text" name="gender" /></td>
    </tr>
    <tr>
      <td align="right">City</td>
      <td align="left"><input type="text" name="country" /></td>
    </tr>
    <tr>
      <td align="right"></td>
      <td align="left"><input type="submit" name="where"value="Add Another Passenger Details" /></td>
    </tr>
     <tr>
      <td align="right"></td>
      <td align="left"><input type="submit" name="where" value="Check Details and Pay" /></td>
    </tr>
  </table>
  </div>
</form>
</body>
</html>