<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- Template by Quackit.com -->
<!-- Images by various sources under the Creative Commons CC0 license and/or the Creative Commons Zero license. 
Although you can use them, for a more unique website, replace these images with your own. -->
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
    <link href="css/custom.css" rel="stylesheet">
 
</head>

<body>
 <% 
		if(session.getAttribute("name")!=null)
		{
			response.sendRedirect("home.jsp");
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
                        <a href="home.jsp">HOME</a>
                    </li>
                    
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">EMPLOYEE <span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="about-us">
							<li><a href="employee.jsp">Add Employee</a></li>
							<li><a href="Display">Display Employee</a></li>
							
						</ul>
					</li>
                    	<li>
                        <a href="registration.jsp">SIGNUP</a>
                    </li>
                </ul>
                
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
    </nav>
 
    
    

	<!-- Header -->
    <header>
        <div class="header-content">
            <div class="header-content-inner">
 
 
<p><!--  login  -->
<div class="container">
   <% 
   if(session.getAttribute("name")!=null){
    String errormessage=(String)session.getAttribute("message");
    out.println("<h2 style='color: white;'>" +errormessage+"</h2>");
   
   }
    %>
    <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info" >
                <div class="panel-heading">
                    <div class="panel-title">Sign In</div>
                </div>

                <div style="padding-top:30px" class="panel-body" >

                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                    <form id="loginform" class="form-horizontal" role="form" action="Signin1" method="post">

                        <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input id="login-username" type="text" class="form-control" name="uname" placeholder="username" required>
                                </div>

                        <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input id="login-password" type="password" class="form-control" name="pass" placeholder="Password" required>
                                </div>

                        <div class="input-group">
                                  <div class="checkbox">
                                    <label>
                                      <input id="login-remember" type="checkbox" name="remember" value="1"> 
                                      <span style="color: black;"> Remember me</span>
                                    </label>
                                  </div>
                                </div>


                            <div style="margin-top:10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
<!--                                   <a id="btn-login" href="Signin1" class="btn btn-success"><input type="submit" value="SIGNUP" /></a> -->
										<input type="submit" value="SIGNIN" class="btn btn-primary btn-large btn-block"/>
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                        <span style="color: black;"> Don't have an account!</span>
                                    <a href="registration.jsp">
                                        Sign Up Here
                                    </a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
    		</div>
		</div>
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





