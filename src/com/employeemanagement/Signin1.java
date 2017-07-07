package com.employeemanagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.channels.SeekableByteChannel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.api.Session;

@WebServlet("/Signin1")
public class Signin1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Signin1() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out=response.getWriter();
		 response.setContentType("text/html");
		 String name=request.getParameter("uname");  
	     String pass=request.getParameter("pass");
	     
	     HttpSession session=request.getSession();
	     session.setAttribute("name", name);
	     session.setAttribute("pass", pass);
//	     DBConnection.checkUser(name,pass);
//	         if( DBConnection.checkUser(name,pass)){
//        		 RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
//                 rd.forward(request, response);
//        	 }
//        	 else{
//        		 out.println("opps invalid user");
//        		 RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//                 	rd.forward(request, response);
//        	 }
	     try{
	    	  Connection con=DBConnection.getCon();
		
	         PreparedStatement ps =con.prepareStatement("select * from register where username=? and password=?");        
	         ps.setString(1, name);
	         ps.setString(2, pass);
	         ResultSet rs =ps.executeQuery();
	        if(rs.next()){
//	        	out.println("<h3>welcome " +" " +name +"</h3>");
//	        	RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
//	        	rd.include(request, response);
	        	response.sendRedirect("welcome.jsp");
	        }
	        else{
	        	session.setAttribute("message", "<center><h3>invalid username="+name+" or password="+pass+" Enter Correct username/password</h3></center>"); 
	        	RequestDispatcher rd1=request.getRequestDispatcher("signin.jsp");
                 rd1.forward(request,response);
	        }
	        
	      }catch(Exception e)
	      {
	          e.printStackTrace();
	      }              
	  }   
}
