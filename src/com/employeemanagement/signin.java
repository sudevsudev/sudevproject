package com.employeemanagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/register")
public class signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public signin() {
        super();     
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out=response.getWriter();
		 response.setContentType("text/html");
		 String name=request.getParameter("uname");  
		 String mail=request.getParameter("email");
	     String pass=request.getParameter("pass");
	     
	     HttpSession session=request.getSession();
    	 session.setAttribute("name", name);
    	 session.setAttribute("mail", mail);
    	 session.setAttribute("pass", pass);
    	  
    	 
    	 
	     try{
	    	 
	    	 Connection con=DBConnection.getCon();
	    	//  Statement statement=con.createStatement(); 
    	// statement.executeUpdate("create table register(username varchar2(30),email varchar2(30),password varchar2(30))"); 
	    	 System.out.println("sudev done");
	    	 String q1="insert into register(username,email,password) values (?,?,?)";
	    	 PreparedStatement pr=con.prepareStatement(q1);
	    	 pr.setString(1, name);
	    	 pr.setString(2, mail);
	    	 pr.setString(3, pass);
	    	 int a=pr.executeUpdate();
	    	System.out.println("the table value are "+a);
//	    	RequestDispatcher rs = request.getRequestDispatcher("welcome.jsp");
//           rs.forward(request, response);
	    	response.sendRedirect("welcome.jsp");
	    	 
	     }catch(Exception e)
	      {
	          e.printStackTrace();
	      }
    	
	    
	}

}
