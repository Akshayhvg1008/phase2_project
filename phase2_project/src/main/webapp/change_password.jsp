
<%@ page language="java" import="java.sql.*" 
    pageEncoding="ISO-8859-1" %>

<%
    String username=request.getParameter("name");
    String password=request.getParameter("password1");
    String password2=request.getParameter("password2");
    System.out.print(username+""+password+""+password2);
    Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/h_airlines","root","hari");
	Statement st=con.createStatement();

    
    
       int x=0;
    	
    	st.executeUpdate("update admin set password='"+password2+"' where user='"+username+"' ");
   
    		con.close();
    %>
    <html>
    <head><style>
    body
     {
	background-image: url("https://wallpaperaccess.com/full/254391.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
	}
	 </style></head>
    <body><h1>Successfully Changed Password</h1></body>
    </html>>