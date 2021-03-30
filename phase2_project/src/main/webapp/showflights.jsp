<%@ page language="java" import="java.sql.*" 
    pageEncoding="ISO-8859-1" %>
<%
String id = request.getParameter("userid");

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
<head>
<style>
body {
  background: white;
  font-size: 62.5%;
}
 body {
	background-image: url("https://wallpaperaccess.com/full/254391.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
	
} 
.img{
opacity: 0.5;}

.container {
  padding: 2em;
}


.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
background-color: #ffffff;
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
</style>

</head>
<body>
<div align="center" class="center">
<h1 style="color:black; ">Details </h1>
<table class="styled-table">
    <thead>
        <tr >           
            <th>Source</th>
            <th>Destination</th>
            <th>Airline</th>
            <th>Price</th>
            <th>Time</th>
            <th>Date</th>
        </tr>
    </thead>
    <tbody>
<b>
<%
try{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/h_airlines","root","hari");
statement=con.createStatement();
String sql ="select * from flights";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tbody>
<tr>
<td><%=resultSet.getString("source") %></td>
<td><%=resultSet.getString("destination") %></td>
<td><%=resultSet.getString("airline") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("time") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
</tbody>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<a href="r_modify_flights.jsp">
		<button class="button" align="center">

			<span>Back to Main Page </span>
		</button>
	</a><br/><br/>
</div>
</body>
</html>