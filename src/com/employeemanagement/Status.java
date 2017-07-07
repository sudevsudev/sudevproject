package com.employeemanagement;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Status")
public class Status extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        
        String sid=request.getParameter("id");
        System.out.println(sid);
        int id=Integer.parseInt(sid);
        System.out.println(id);
        Emp e=EmpDao.getEmployeeById(id);
        request.setAttribute("id", e.getId());
        request.setAttribute("status", e.getStatus());
        request.getRequestDispatcher("display.jsp").forward(request, response);
        
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		int replay=0;
        String status=request.getParameter("status");
        String id2=request.getParameter("id");
        int id3=Integer.parseInt(id2);
        replay=EmpDao.Status2(status,id3);
        if(replay>0){  
            response.sendRedirect("display.jsp");  
        }else{  
            out.println("Sorry! unable to Inactivate record");  
        } 
	}

}
