
    <%@ page language="java" import="java.sql.*" 
    pageEncoding="ISO-8859-1" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

button,
button::after {
  -webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
  -o-transition: all 0.3s;
	transition: all 0.3s;
}

button {
  background: none;
  border: 3px solid #fff;
  border-radius: 5px;
  color: #fff;
  display: block;
  font-size: 1.6em;
  font-weight: bold;
  margin: 1em auto;
  padding: 1em 5em;
  position: relative;
  text-transform: uppercase;
}

button::before,
button::after {
  background: #fff;
  content: '';
  position: absolute;
  z-index: -1;
}

button:hover {
  color: #2ecc71;
}

/* BUTTON 4 */
.btn-4::before {
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}

.btn-4::after {
  background: #2ecc71;
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}

.btn-4:hover:after {
  height: 0;
  left: 50%;
  top: 50%;
  width: 0;
}
@charset "ISO-8859-1";
.checkmark__circle {
  stroke-dasharray: 166;
  stroke-dashoffset: 166;
  stroke-width: 2;
  stroke-miterlimit: 10;
  stroke: #7ac142;
  fill: none;
  animation: stroke 0.6s cubic-bezier(0.65, 0, 0.45, 1) forwards;
}

.checkmark {
  width: 56px;
  height: 56px;
  border-radius: 50%;
  display: block;
  stroke-width: 2;
  stroke: #fff;
  stroke-miterlimit: 10;
  margin: 10% auto;
  box-shadow: inset 0px 0px 0px #7ac142;
  animation: fill .4s ease-in-out .4s forwards, scale .3s ease-in-out .9s both;
}

.checkmark__check {
  transform-origin: 50% 50%;
  stroke-dasharray: 48;
  stroke-dashoffset: 48;
  animation: stroke 0.3s cubic-bezier(0.65, 0, 0.45, 1) 0.8s forwards;
}

@keyframes stroke {
  100% {
    stroke-dashoffset: 0;
  }
}
@keyframes scale {
  0%, 100% {
    transform: none;
  }
  50% {
    transform: scale3d(1.1, 1.1, 1);
  }
}
@keyframes fill {
  100% {
    box-shadow: inset 0px 0px 0px 30px #7ac142;
  }
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


<svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52">
  <circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none"/>
  <path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"/>
  <h2><p style="color: green;" align="center" >Booking Confirmed </p></h2>
  
</svg>
</head>
<body>
<div align="center" class="center">
<h1 style="color:#dfe6e9 ">Ticket Details Are</h1>
<table class="styled-table">
    <thead>
        <tr >
            <th>Booked_id</th>
            <th>Flight_number</th>
             <th>Passenger_id</th>
            <th>Source</th>
            <th>Destination</th>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>City</th>
            <th>Airline</th>
            <th>Price</th>
            <th>Time</th>
            <th>Date</th>
        </tr>
    </thead>

<%
int var=0,m=0;
HttpSession see=request.getSession(false);
if(see!=null)
{  var=(int)see.getAttribute("id");
m=(int)see.getAttribute("flight_no");
System.out.println(var+"var in pa");}
String v=Integer.toString(var);
String v1=Integer.toString(m);
    Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/h_airlines","root","hari");
	Statement st=con.createStatement();

    String a="",b="",c="",d="";
    ResultSet k=st.executeQuery("select airline,price,time,date from flights where Flight_number='"+v1+"'");
while(k.next()){
    a=k.getString(1);
    b=k.getString(2);
    c=k.getString(3);
    d=k.getString(4);
    
       }int x=0;
    	
       ResultSet resultSet=st.executeQuery("SELECT * FROM  booked_details");
    	
    	while(resultSet.next())
    	{
    		if(resultSet.getString("booked_id").equals(v))
    		{
    			x++;
%>
<tbody>
<b>
<tr style="color:  #009879">
<td><%=resultSet.getString("booked_id") %></td>
<td><%=resultSet.getString("Flight_number") %></td>
<td><%=x%></td>
<td><%=resultSet.getString("source") %></td>
<td><%=resultSet.getString("destination") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("age") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("country") %></td>
<td><%=a%></td>
<td><%=b%></td>
<td><%=c%></td>
<td><%=d%></td>


</b>
</tr>
</tbody>
  <%
    	}
    	}
    %>
    </table>
    </div>
    <div class="container">
  <a href="r_login.jsp">
  <button class="btn-4">Logout</button></a>
</div>
</body>
</html>