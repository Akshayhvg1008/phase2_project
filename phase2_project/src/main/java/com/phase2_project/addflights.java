package com.phase2_project;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addflights
 */
@WebServlet(name = "addflights", urlPatterns = { "/addflights" })
public class addflights extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public addflights() {
        super();
        // TODO Auto-generated constructor stub
    }


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String source =request.getParameter("source");
		String destination=request.getParameter("des");
		String airline=request.getParameter("airline");
		int price=Integer.parseInt(request.getParameter("price"));
		String date=request.getParameter("date");
		Statement statement = null;
		ResultSet resultSet = null;
		String time=request.getParameter("time");
		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/h_airlines","root","hari");
		    statement=con.createStatement();
		    String har ="insert into flights(source,destination,airline,price,time,date) values('" + source + "','" + destination + "','" + airline + "','"+price+"','"+time+"','"+date+"')";
			statement.executeUpdate(har);

		    
		} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
		}
	}

}
