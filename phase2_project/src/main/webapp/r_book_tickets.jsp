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
}</style>

</head>
<body >
	<form action="searchflight" method="post"> 
	<div align="center" class="center">
  <table>
    <tr>
      <td align="right">Date of travel</td>
      <td align="left"><input type="text" name="do" /></td>
    </tr>
    <tr>
      <td align="right">Source</td>
      <td align="left"><input type="text" name="source" /></td>
    </tr>
    <tr>
      <td align="right">Destination</td>
      <td align="left"><input type="text" name="des" /></td>
    </tr>
    <tr>
      <td align="right">Number Of Persons</td>
      <td align="left"><input type="int" name="nop" /></td>
    </tr>
    <tr>
      <td align="right"></td>
      <td align="left"><input type="submit" value="Submit" /></td>
    </tr>
  </table>
  </div>
</form>
</body>
</html>