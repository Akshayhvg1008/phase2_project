package com.phase2_project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "user_register", urlPatterns = { "/user_register" })
public class user_register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public user_register() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password1=request.getParameter("password1");
		String name=request.getParameter("name");
		
				try {
			    Class.forName("com.mysql.jdbc.Driver");
				Connection con;
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/h_airlines","root","hari");
				Statement st=con.createStatement();
			    String p="insert into user(user,password,name) values('"+username+"','"+password1+"','"+name+"')";
			    st.executeUpdate(p);

				}catch (Exception e) {
					
				}
				response.sendRedirect("r_login.jsp");
		//doGet(request, response);
	}

}
