package com.phase2_project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "searchflight", urlPatterns = { "/searchflight" })

public class searchflight extends HttpServlet {
	private static final long serialVersionUID = 1L;
   int n=0,n1=0;
   String source="",des="";
   private static final ArrayList<Integer> rand=new ArrayList<Integer>();
	public searchflight() {
		
		super();
		// TODO Auto-generated constructor stub
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.service(req, resp);
		HttpSession h=req.getSession();
		h.setAttribute("id", n);
		h.setAttribute("source", source);
		h.setAttribute("des", des);
		h.setAttribute("flight_no", n1);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dot=request.getParameter("do");
		 source =request.getParameter("source");
		  des=request.getParameter("des");
		String nop=request.getParameter("nop");
		response.setContentType("text/html");

		PrintWriter k=response.getWriter();
		img(request,response);
		k.println("<form action='fii_details.jsp'>");
		tabopen(request,response);
		Statement statement = null;
		ResultSet resultSet = null;
		
		Random r=new Random();
		
		 n=10000+r.nextInt(90000);
		 while(rand.contains(n))
		 { n=10000+r.nextInt(90000);}

		System.out.println(n);
		
		
		int l=0;
		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/h_airlines","root","hari");
		    statement=con.createStatement();
		    String har="select * from flights";
		    
		    resultSet=statement.executeQuery(har);
		    while(resultSet.next()){

		    	if(resultSet.getString(2).equals(source) && resultSet.getString(3).equals(des) && resultSet.getString(7).equals(dot))
		    		{
		    		 n1=Integer.parseInt(resultSet.getString("Flight_number"));
		    		l=1;
		    		k.println("<tr>");
		    		k.println("<td>");k.print(resultSet.getString("source"));k.println("</td>");
		    		k.println("<td>");k.print(resultSet.getString("destination")); k.println("</td>");
		    		k.println("<td>");k.print(resultSet.getString("airline")); k.println("</td>");
		    		k.println("<td>");k.print(resultSet.getString("price"));k.println("</td>");
		    		k.println("<td> <input type='submit' value='Book Flight'>");k.println("</td>");
		     		k.println("</tr>");
		    		}
		    }
		  /*  String p="insert into booked_details(booked_id,Flight_number,source,destination) values('"+n+"','"+n1+"','"+source+"','"+des+"')";
		    statement.executeUpdate(p);*/
		    tabclose(request,response);
			/*
			 * if(x==1) response.sendRedirect("payment.jsp"); else
			 * response.sendRedirect("No_flighs_available.html");
			 */
		} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
		}
		if(l==0)
			response.sendRedirect("no_flight.jsp");
		doGet(request, response);
	}

	private void img(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter k=response.getWriter();
		k.print("<style>");
		
			k.print("body {");
			k.print("background-image: url(\"https://wallpaperaccess.com/full/254391.jpg\");");
			k.print("background-repeat: no-repeat;");
					k.print("background-size: 100%;");
					k.print("}");
		k.print("</style>");
		
	}

	private void tabclose(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter k=response.getWriter();

		k.print("</table>");
		k.print("</div>");
		k.print("</form>");
		
	}

	private void tabopen(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter k=response.getWriter();
		k.print("<div align='center' class='center'>");
		k.print("<table border='1'>");
	    k.print("<tr>");
		k.print("<td>Source</td>");
	    k.print("<td>Destination</td>");
	    k.print("<td>Airline</td>");
	    k.print("<td>Price</td>");
	    k.print("<td>Status</td>");
	    k.print("</tr>");
		
	}

}
