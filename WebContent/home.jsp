<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sudev</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    <link href="css/custom.css" rel="stylesheet">

</head>

<body>

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
                  	<% if(session.getAttribute("name")!=null){
						String name=(String)session.getAttribute("name");
						 out.println("<a href=''>"+"Welcome "+name +"</a>");
                  	}
						%>      
                    </li>  
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">EMPLOYEE <span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="about-us">
							<li><a href="employee.jsp">Add Employee</a></li>
							<li><a href="display.jsp">Display Employee</a></li>
						</ul>
					</li>
					<li>
					   <%
					if(session.getAttribute("name")==null)
					{
						out.println("<li>");
						out.println("<a href='signin.jsp'>SIGNIN</a>");
						out.println("</li>");			
					}
					%> 
					</li>					 
					</li>
					<li>
<!--                         <a href="signin.jsp">SIGNIN</a> -->
                    </li>
                    	<li>
<!--                         <a href="registration.jsp">SIGNUP</a> -->
                           <%
					if(session.getAttribute("name")==null)
					{
						out.println("<li>");
						out.println("<a href='registration.jsp'>SIGNUP</a>");
						out.println("</li>");			
					}
					%>
                    </li>
                    <%
					if(session.getAttribute("name")!=null)
					{
						out.println("<li>");
						out.println("<a href='signout.jsp'>SIGNOUT</a>");
						out.println("</li>");			
					}
					%>                  
                </ul>           
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
    </nav>

	<!-- Header -->
    <header>
        <div class="header-content">
            <div class="header-content-inner">
                <h1>Welcome</h1>
                <p>To Be You Needn't Bec'm ,Just Be You Will Bec'm.</p>
                <a href="employee.jsp" class="btn btn-primary btn-lg">Add Employee</a>
                 <a href="display.jsp" class="btn btn-primary btn-lg">View All Employee</a>
            </div>
        </div>
    </header>

	<!-- Footer -->
    <footer class="page-footer">
    
    	<!-- Contact Us -->
        <div class="contact">
        	<div class="container">
				<h2 class="section-heading">Contact Us</h2>
				<p><span class="glyphicon glyphicon-earphone"></span><br> +91-8792141668</p>
				<p><span class="glyphicon glyphicon-envelope"></span><br> sudevkr723@gmail.com</p>
        	</div>
        </div>
        	
        <!-- Copyright etc -->
        <div class="small-print">
        	<div class="container">
        		<p>Copyright &copy; 2017. All rights reserved </p>
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
