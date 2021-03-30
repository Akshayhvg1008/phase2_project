package com.phase2_project;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

/**
 * Servlet implementation class add_again
 */
@WebServlet(name = "add_details", urlPatterns = { "/add_details" })
public class add_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_details() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int var=0;
		String val=request.getParameter("where");
		int flight_no=0;String source="",des="";
		String name=request.getParameter("name");
		int age=Integer.parseInt(request.getParameter("age"));
		String gender=request.getParameter("gender");
		String country=request.getParameter("country");
		System.out.println(name+""+age+""+gender+""+country);
		HttpSession see=request.getSession(false);
		if(see!=null)
		{  var=(int)see.getAttribute("id");
		   flight_no=(int)see.getAttribute("flight_no");
		   source=(String)see.getAttribute("source");
		   des=(String)see.getAttribute("des");
		   System.out.println(var+"var in pa_add");
		}
		System.out.println(name+""+age+""+gender+""+country+""+flight_no+""+source+""+des+""+var);
		 try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			Connection con;
			try {
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/h_airlines","root","hari");
			Statement st=con.createStatement();
		    String p="insert into booked_details(booked_id,Flight_number,source,destination,name,age,gender,country) values('"+var+"','"+flight_no+"','"+source+"','"+des+"','"+name+"','"+age+"','"+gender+"','"+country+"')";
		    st.executeUpdate(p);

			}catch (Exception e) {
				// TODO: handle exception
			}
			if(val.equals("Add Another Passenger Details"))
			{ response.sendRedirect("fii_details.jsp");}
			else
				response.sendRedirect("check_n_pay.jsp");
		doGet(request, response);
	}

}
