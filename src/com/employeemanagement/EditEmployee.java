package com.employeemanagement;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditEmployee")
public class EditEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
	        PrintWriter out=response.getWriter(); 
	        response.setContentType("text/html");
	        out.println("<h1>Update Employee</h1>"); 
	        String street=request.getParameter("street");
	        String sid=request.getParameter("id");  
	        int id=Integer.parseInt(sid);  
	        
	        Emp e=EmpDao.getEmployeeById(id);
	        request.setAttribute("id", e.getId());
	        request.setAttribute("fname", e.getFname());
	        request.setAttribute("lname", e.getLname());
	        request.setAttribute("email", e.getEmail());
	        request.setAttribute("date", e.getDate());
	        request.setAttribute("day", e.getDay());
	        request.setAttribute("year", e.getYear());
	        request.setAttribute("department", e.getDepartment());
	        request.setAttribute("qualification", e.getQualification());
	        request.setAttribute("contact", e.getContact());
	        //request set attribute
	        request.setAttribute("street1", e.getStreet1());
	        request.setAttribute("street2", e.getStreet2());
	        request.setAttribute("city", e.getCity());
	        request.setAttribute("state", e.getState());
	        request.setAttribute("zip", e.getZipcode());
	        request.setAttribute("phone", e.getPhone());
	        if(street!=null){
	        request.getRequestDispatcher("display.jsp").forward(request, response);
	        }else{
	        request.getRequestDispatcher("edit.jsp").forward(request, response);
	        }
	}

}
