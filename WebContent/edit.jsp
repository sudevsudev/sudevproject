<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
<!-- email validation js -->
<script src="js/validate.js"></script>
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
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">EMPLOYEE <span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="about-us">
							<li><a href="employee.jsp">Add Employee</a></li>
							<li><a href="display.jsp">Display Employee</a></li>						
						</ul>
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
        <div class="header-content">
            <div class="header-content-inner">
            </div>
            
            </div>
        </div>    
    </header>
    
     <div class="disp">
            <%! String sid;
%>
<%
		if(session.getAttribute("name")==null)
		{
			response.sendRedirect("signin.jsp");
		}
%>
<%
   		out.println("<h1>Update Employee</h1>");  
		sid=request.getParameter("id");
		  int id=Integer.parseInt(sid);
		String fname=(String)request.getAttribute("fname");
		String lname=(String)request.getAttribute("lname");
		String email=(String)request.getAttribute("email");
		String date=(String)request.getAttribute("date");
		int day1=(int)request.getAttribute("day");
// 		int day1=Integer.parseInt(day);
		int year1=(int)request.getAttribute("year");
		//int year1=Integer.parseInt(year);
		String department=(String)request.getAttribute("department");
		String qualification=(String)request.getAttribute("qualification");
		String contact1=(String)request.getAttribute("contact");
		//int contact1=Integer.parseInt(contact);
		request.setAttribute("sid", id);
		
		
%>
<div class="panel panel-primary"> 
<div class="panel-header">
<span class="btn btn-block btn-success"><b>Employee ID: ${sid }</b></span>
</div>

<div class="edit"> 


<form action="Update" method="post" name="myForm" onsubmit="return validateForm();">
<table align="center">
<!-- <tr> -->
<td>Employee update :</td>
<td>${sid }<input type="hidden" placeholder="Employee ID" name="id" value="${sid }"/></td>
</tr>     
<tr>
<td>name :</td>
<td>
<table class="table-responsive"> 
<tr>
<td>First Name :</td><td><input type="text"  class="form-control spacingX" placeholder="First Name" name="fname" value="<%=fname%>"/></td>

<td class="spacingX" >Last Name : </td><td><input type="text"  class="form-control spacingX"  placeholder="Last Name" name="lname" value="<%=lname%>"/></td>
</tr>  

</table>
</td>
</tr>  
<hr>
<tr><td>Email:</td><td><input type="text"  class="form-control spacingX" placeholder="example@domain.com" name="email" value="<%=email%>"/></td></tr>
<tr><td>Date of Join:</td><td><select name="date" class="input">
                  <option value="<%=date%>"><%=date%></option>
                  <option  value="01">January</option>
                  <option value="02">February</option>
                  <option value="03" >March</option>
                  <option value="04">April</option>
                  <option value="05">May</option>
                  <option value="06">June</option>
                  <option value="07">July</option>
                  <option value="08">August</option>
                  <option value="09">September</option>
                  <option value="10">October</option>
                  <option value="11">November</option>
                  <option value="12" >December</option>
                  </label>
                 </select>    
                Day<input maxlength="2" name="day"  class="input" placeholder="Day" value="<%=day1%>">
                Year <input maxlength="4" class="input " name="year" placeholder="Year" value="<%=year1%>"><br></td></tr>  
<tr><td>Department:</td><td><input class="form-control spacingX " type="text" placeholder="Department" name="department" value="<%=department%>"/></td></tr>  


<tr><td>Education Details :</td><td></td></tr> 
<tr><td></td><td>
<table> 
<tr><td>Qualification :</td><td><input type="text" class="form-control spacingX"  placeholder="Qualification" name="qualification" value="<%=qualification%>"/></td></tr>
</table>
</td></tr>
<tr><td>Contact No :</td><td><input class="form-control spacingX" type="number" placeholder="Contact NO" name="contact" value="<%=contact1%>"/></td></tr>

<tr><td></td><td><input type="submit" class="btn btn-danger btn-large spacingX btnS" value="Update Employee"/></td></tr>  
</table></td></tr> 
</form>
</div></div>

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
