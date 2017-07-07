<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<!--     <script> -->
//     function validateEmail(emailField){
//         var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

//         if (reg.test(emailField.value) == false) 
//         {
//             alert('Invalid Email Address');
//             return false;
//         }

//         return true;

// }
<!--     </script> -->
    <script src="js/validate.js"></script>
      <%
		if(session.getAttribute("name")==null)
		{
			response.sendRedirect("signin.jsp");
		}
		%>
    <!-- Navigation -->
    <nav id="siteNav" class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Logo and responsive toggle -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
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
        <div class="header-content" style="background-color: ">
            <div class="header-content-inner">
            </div>
        </div>    
    </header>
    
 <div class="disp">
<form action="Employee" method="post" name="myForm" onsubmit="return validateForm();">
<div class="form">
<table align="center">  
<!-- <tr> -->
<!-- <td>Employee Id</td> -->
<!-- <td><input type="number" placeholder="Employee ID" name="id" /></td> -->
<!-- </tr>   -->
<tr>
<td>name</td>
<td>
<table class="table-responsive"> 
<tr>
<td>First Name :</td><td><input type="text"  class="form-control spacingX" placeholder="First Name" name="fname"/></td>

<td class="spacingX" >Last Name : </td><td><input type="text"  class="form-control spacingX"  placeholder="Last Name" name="lname"/></td>
</tr>  

</table>
</td>
</tr>  
<tr><td>Email:</td><td><input type="text" class="form-control spacingX" placeholder="example@domain.com" name="email" class="form-control spacingX" required=""/></td></tr>
<tr><td>Date of Join:</td><td>
<select name="date" style="width:70px" class="input">
<div class="form-control spacingX">
                  <option value="">month</option>
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
                  </label></div>
                 </select>    
                Day<input maxlength="2" name="day"  class="input" placeholder="Day">
                Year <input maxlength="4" class="input " name="year" placeholder="Year"><br></td></tr> 
<tr><td>Department:</td><td><input type="text" class="form-control spacingX" placeholder="Department" name="department" required=""/></td></tr>  
<tr><td>Salary:</td><td><input maxlength="8" class="form-control spacingX input" placeholder="Salary" name="salary" required=""/></td></tr> 
<tr><td>Experience:</td><td>  
<select name="experience" class="form-control spacingX" style="width:150px">  
 					<option value="">Yes</option>
                  <option  value="01">No</option> 
</select>  
</td></tr> 
<tr><td>Address:</td><td></td></tr> 
<tr><td></td>

<td><table> 
<tr><td>Permanent Address :</td><td><input type="text" class="form-control spacingX" placeholder="street address " name="street1" required=""/></td>
<td></td><td><input type="text" class="form-control spacingX" placeholder="street address 2" name="street2" required=""/></td></tr> 
<tr><td>City:</td><td><input type="text" class="form-control spacingX" placeholder="City" name="city" required=""/></td>
<td>State:</td><td><input type="text" class="form-control spacingX" placeholder="State" name="state" required=""/></td></tr>   
<tr><td>ZipCode:</td><td><input type="text" class="form-control spacingX" placeholder="Code" name="zipcode" required=""/></td>
<td>Phone:</td><td><input maxlength="9" class="form-control spacingX input" placeholder="Phone NO" name="phone" required=""/></td></tr></tr>
 
<tr><td>Present Address :</td><td><input type="text" class="form-control spacingX" placeholder="street address " name="street3"/></td>
<td></td><td><input type="text" class="form-control spacingX" placeholder="street address 2" name="street4"/></td></tr> 
<tr><td>City:</td><td><input type="text" class="form-control spacingX" placeholder="City" name="city2"/></td>
<td>State:</td><td><input type="text" class="form-control spacingX" placeholder="State" name="state2"/></td></tr>   
<tr><td>ZipCode:</td><td><input type="text" class="form-control spacingX" placeholder="Code" name="zipcode2"/></td>
<td>Phone:</td><td><input maxlength="9" class="form-control spacingX input" placeholder="Phone NO" name="phone2" required=""/></td></tr></tr>
</table>
</td></tr> 

<tr><td>Education Details :</td><td></td></tr> 
<tr><td></td><td>
<table> 
<tr><td>Qualification :</td><td><input type="text" class="form-control spacingX" placeholder="Qualification" name="qualification" required=""/></td>
<td>University/College:</td><td><input type="text" class="form-control spacingX" placeholder="University/College" name="college"/></td></tr>   
<tr><td>Percentage :</td><td><input type="text" class="form-control spacingX" placeholder="Percentage" name="percentage"/></td>
<td>Completion year:</td><td><input type="text" class="form-control spacingX" placeholder="Complition Year" name="complitionyear"/></td></tr></tr>
</table>
</td></tr>

<tr><td>Contact No :</td><td><input type="text" class="form-control spacingX" placeholder="Contact NO" name="contact" required=""/></td></tr>   
<tr><td>Active Status :</td><td><select name="status" style="width:150px" class="form-control spacingX" required="">
						<option>select</option>  
 					<option>Active</option>
                  <option>Inactive</option> 
</select></td></tr>
 
<tr><td></td><td><input type="submit" class="btn btn-danger spacingX btnS" value="Save Employee"/></td></tr>  
</table>
</div> 

<a href="display.jsp" class="btn btn-danger btnS text-centre" >view employees</a>
</form>
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