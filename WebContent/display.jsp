<%@page import="com.employeemanagement.Emp"%>
<%@page import="com.employeemanagement.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Sudev</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    <link href="css/display.css" rel="stylesheet"> 
</head>
<body>
    <!-- Navigation -->
    <nav id="siteNav" class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Logo and responsive toggle -->
            <div class="navbar-header">
               
                <a class="navbar-brand" href="home.jsp">
                	<span class="glyphicon glyphicon-fire"></span> 
                	Employee Management
                </a>
            </div>
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav navbar-right">
                <li class="active">
                  	<% 
						String name=(String)session.getAttribute("name");
						 out.println("<a href=''>"+"Welcome "+name +"</a>");
						%>      
                    </li>
                    <li>
                        <a href="home.jsp">HOME</a>
                    </li> 
					<li>
                        <a href="signout.jsp">SIGNOUT</a>
                    </li>
                </ul>
                
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
    </nav>

	<!-- Header -->
    <header>
        <div class="header-content" >
            <div class="header-content-inner">
                 
            </div>
        </div>    
    </header>
    <div class="disp">
<% 
 if(session.getAttribute("name")==null)
			{
				response.sendRedirect("signin.jsp");
			}
%>
<% 
	         EmpDao ed=new EmpDao();
	         Emp ee=new Emp();
	          
	        out.println("<h1 >Employees List</h1>"); 
	        
	          
	        List<Emp> list=ed.getAllEmployees(); 
	        out.print("<table border='4' width='90%' align='center'>");  
	        out.print("<tr><th>Id</th><th>Name</th><th>E-Mail</th><th>Date Of Join</th><th>Department</th>" 
	                 +"<th>Contact</th><th>Qualification</th><th>Address</th><th>Update</th><th>Status</th><th>Delete</th></tr>");  
	        for(Emp e:list){ 
	        	String status=e.getStatus();
	         out.print("<tr><td>"+e.getId()+"</td><td>"+e.getFname()+" "+e.getLname()+"</td><td>"+e.getEmail()+"</td>"  
	                 +"<td>"+e.getDay()+"/"+e.getDate()+"/"+e.getYear()+"</td><td>"+e.getDepartment()+"</td><td>"+e.getContact()+"</td><td>"+e.getQualification()+"</td>"
	                 +"<td><a class='btn btn-info spacingX' href='EditEmployee?id="+e.getId()+"&street="+e.getStreet1()+"'>Address</a></td>"
	                 +"<td><a class='btn btn-info spacingX' href='EditEmployee?id="+e.getId()+"'>Update</a></td>"
	                 +"<td><a class='btn btn-warning spacingX' href='Status?status="+status+"&id="+e.getId()+"'>"+status+"</a></td>"
	                 +"<td><a class='btn btn-danger spacingX' href='Delete?id="+e.getId()+"'>Delete</a></td></tr>");  
	        }  
	        out.print("</table>");       
	        out.println("<a href='employee.jsp' class='btn btn-success btnS'>Add New Employee</a>");	     
	        %>   
	        
	        <% 
	        
			String status=(String)request.getAttribute("status"); 
			String sid=request.getParameter("id"); 
			if(status!=null)
			{
				int id=Integer.parseInt(sid);
				out.println("<form action='Status' method='post'>");
				out.println("<table align='center'>");
					out.println("<tr><td>Employee ID :</td>");
					out.println("<td>"+id+"<input type='hidden' placeholder='Employee ID' name='id' value="+id+"></td></tr>");
					
					out.println("<tr><td>Active Status :</td><td><select name='status' style='width:150px' class='form-control spacingX' required>"
					+"<option>"+status+"</option> "
					+"<option >Active</option>"
					+"<option>Inactive</option>"
					+"</select></td></tr>");
					out.println("<tr><td><input type='submit' class='btn btn-danger spacingX btnS' value='update status'/></td></tr>");
					out.println("</table>");
				}
			%>
			
				<%	
				String street1=(String)request.getAttribute("street1");
					if(street1!=null){
						String fname=(String)request.getAttribute("fname");
						String lname=(String)request.getAttribute("lname");
						String street2=(String)request.getAttribute("street2");
						String city=(String)request.getAttribute("city");
						String state=(String)request.getAttribute("state");
						String zip=(String)request.getAttribute("zip");
						int phone=(int)request.getAttribute("phone");
					
						out.println("<h2>Employee "+fname+" "+lname+" Address :</h2>");
				out.print("<table border='4' width='60%' align='center'>");  
				out.print("<tr><th>Street1</th><th>Street2</th><th>City</th><th>State</th><th>Zipcode</th>" 
				         +"<th>Phone</th></tr>"); 
				out.print("<tr><td>"+street1+"</td><td>"+street2+"</td><td>"+city+"</td>"
						+"<td>"+state+"</td><td>"+zip+"</td><td>"+phone+"</td></tr>");       
				out.print("</table>");
					}
				%>
</div>

	<!-- Footer -->
    <footer class="page-footer" style="background-color: grey !important">	
        <!-- Copyright etc -->
        <div class="small-print">
        	<div class="container">
        		<p style="color: white;">Copyright &copy; 2017. All rights reserved </p>
        	</div>
        </div>
        
    </footer>

    <!-- jQuery -->
    <script src="js/jquery-1.11.3.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    
    <!-- Custom Javascript -->
    <script src="js/custom.js"></script>

</body>

</html>




