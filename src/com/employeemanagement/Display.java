package com.employeemanagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Display")
public class Display extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     response.setContentType("text/html");
	     HttpSession session=request.getSession();
	     if(session.getAttribute("name")==null)
			{
				response.sendRedirect("signin.jsp");
			}
	        PrintWriter out=response.getWriter();  
	        out.println("<a href='employee.jsp'>Add New Employee</a>");  
	        out.println("<h1>Employees List</h1>"); 
	        out.println("<h2>Employees List</h2>");
	          
	        List<Emp> list=EmpDao.getAllEmployees();  
	          
	        out.print("<table border='1' width='100%'");  
	        out.print("<tr><th>Id</th><th>Name</th><th>E-Mail</th><th>Date Of Join</th><th>Department</th>" 
	                 +"<th>Contact</th><th>Qualification</th><th>Update</th><th>Delete</th></tr>");  
	        for(Emp e:list){  
	         out.print("<tr><td>"+e.getId()+"</td><td>"+e.getFname()+" "+e.getLname()+"</td><td>"+e.getEmail()+"</td>"  
	                 +"<td>"+e.getDate()+"/"+e.getDay()+"/"+e.getYear()+"</td><td>"+e.getDepartment()+"</td><td>"+e.getContact()+"</td><td>"+e.getQualification()+"</td>"
	                 +"<td><a href='EditEmployee?id="+e.getId()+"'>Update</a></td>"
	                 +"<td><a href='Delete?id="+e.getId()+"'>Delete</a></td></tr>");  
	        }  
	        out.print("</table>");
	        out.println("<a href='home.jsp'>HOME </a>");
	        out.close();  
	    }  
}
