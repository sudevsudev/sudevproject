package com.employeemanagement;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Employee")
public class Employee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();  
		response.setContentType("text/html");
//		String sid=request.getParameter("id");
//		int id=Integer.parseInt(sid);
		
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
		  String s3=request.getParameter("salary");
		  int salary=Integer.parseInt(s3);
		  String experience=request.getParameter("experience");
		  //permanent address
		  String street1=request.getParameter("street1");
		  String street2=request.getParameter("street2");
		  String city=request.getParameter("city");
		  String state=request.getParameter("state");
		  String zipcode=request.getParameter("zipcode");
		  String s4=request.getParameter("phone");
		  int phone=Integer.parseInt(s4);
		  //present address
		  String street3=request.getParameter("street3");
		  String street4=request.getParameter("street4");
		  String city2=request.getParameter("city2");
		  String state2=request.getParameter("state2");
		  String zipcode2=request.getParameter("zipcode2");
		  String s5=request.getParameter("phone2");
		  int phone2=Integer.parseInt(s5);
		  //qualification
		  String qualification=request.getParameter("qualification");
		  String college=request.getParameter("college");
		  String percentage=request.getParameter("percentage");
		  String complitionyear=request.getParameter("complitionyear");
		  
		  String contact=request.getParameter("contact");
		  String status=request.getParameter("status");
		  //Name class object
//		  Name name=new Name();
//		  name.setFname(fname);
//		  name.setLname(lname);
		  
		  //session
		  HttpSession session=request.getSession();
		  session.setAttribute("fname", fname);
		  session.setAttribute("lname", lname);
		  
		  //Emp Class Object 
		  Emp e=new Emp();
//		  e.setId(id);
		  e.setFname(fname);
		  e.setLname(lname);
		  e.setEmail(email);
		  e.setDate(date);
		  e.setDay(day);
		  e.setYear(year);
		  e.setDepartment(department);
		  e.setSalary(salary);
		  e.setExperience(experience);
		  e.setStreet1(street1);
		  e.setStreet2(street2);
		  e.setCity(city);
		  e.setState(state);
		  e.setZipcode(zipcode);
		  e.setPhone(phone);
		  e.setQualification(qualification);
		  e.setCollege(college);
		  e.setComplitionyear(complitionyear);
		  e.setContact(contact);
		  e.setStatus(status);
		  int sta=EmpDao.save(e);  
	        if(sta>0){  
	            out.print("<p>Record saved successfully!</p>");  
	            request.getRequestDispatcher("welcome.jsp").forward(request, response);  
	        }else{  
	            out.println("Sorry! unable to save record");  
	        }  
	        out.close();
	}

}
