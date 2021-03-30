
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

    System.out.print(username+password+password2);  
       int x=0;
    	
    	st.executeUpdate("update admin set password='"+password2+"' where user='"+username+"' ");
   
    		
    		if(username.equals("") || password.equals("") ||password2.equals(""))
    			response.sendRedirect("enter_change_password.jsp");
    		else 
    			response.sendRedirect("success_password.html");
    		con.close();
    %>
   