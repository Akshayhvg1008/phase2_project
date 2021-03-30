<%@ page language="java" import="java.sql.*" 
    pageEncoding="ISO-8859-1" %>
<%

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
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

<body><b>
<p>Available Airlines</p></b>
<%
try{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/h_airlines","root","hari");
statement=con.createStatement();
String sql ="select airline from flights";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<ul>
<ol>
<%=resultSet.getString("airline") %>
</ol>
</ul>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<hr >
<form action="addflights" method="post"> 
	<div align="center" class="center">
	<p style="color: #ffffff">Add New Flights</p>
	<hr>
  <table>
    
    <tr>
      <td align="right" style="color: #34e7e4">Source</td>
      <td align="left"><input type="text" name="source" /></td>
    </tr>
    <tr>
      <td align="right" style="color: #34e7e4">Destination</td>
      <td align="left"><input type="text" name="des" /></td>
    </tr>
    <tr>
      <td align="right" style="color: #34e7e4">Airline</td>
      <td align="left"><input type="int" name="airline" /></td>
    </tr>
    <tr>
      <td align="right" style="color: #34e7e4">Price</td>
      <td align="left"><input type="text" name="price" /></td>
    </tr>
    <tr>
      <td align="right" style="color: #34e7e4">Time</td>
      <td align="left"><input type="text" name="time" /></td>
    </tr>
    <tr>
      <td align="right" style="color: #34e7e4">Date</td>
      <td align="left"><input type="text" name="date" /></td>
    </tr>
    <tr>
      <td align="right"></td>
      <td align="left"><input type="submit" value="Add Flight" /></td>
    </tr>
  </table>
  </div>
</form>




</body>
</html>