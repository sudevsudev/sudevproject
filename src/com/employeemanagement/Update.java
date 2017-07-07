package com.employeemanagement;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();    
        String sid=request.getParameter("id");
        int id=Integer.parseInt(sid);
		  String fname=request.getParameter("fname");
		  String lname=request.getParameter("lname");
		  String email=request.getParameter("email");
		  //date of joining
		  String date=request.getParameter("date");
		  String s1=request.getParameter("day");
		  int day=Integer.parseInt(s1);
		  String s2=request.getParameter("year");
		  int year=Integer.parseInt(s2);
		  
		  String department=request.getParameter("department");
		  //qualification
		  String qualification=request.getParameter("qualification");		  
		  String contact=request.getParameter("contact");
 
        Emp e=new Emp(); 
        e.setId(id);
        e.setFname(fname);
        e.setLname(lname);
        e.setEmail(email);
        e.setDate(date);
        e.setDay(day);
        e.setYear(year);
        e.setDepartment(department);
        e.setQualification(qualification);
        e.setContact(contact);
  
        int status=EmpDao.update(e);  
        if(status>0){  
            response.sendRedirect("display.jsp");  
        }else{  
            out.println("Sorry! unable to update record");  
        }  
          
        out.close();  
    }
	

}
