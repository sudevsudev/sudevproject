<%@page import="com.employeemanagement.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String status=(String)request.getAttribute("status"); 
String sid=request.getParameter("id");
int id=Integer.parseInt(sid); 
%>
<form action="Status" method="post">
<td>Employee update :</td>
<td>${id }<input type="hidden" placeholder="Employee ID" name="id" value="${id }"/></td>
</tr> <br>
Active Status :<select name="status" style="width:150px" class="form-control spacingX" required="">
<option><%=status %></option>  
<option>Active</option>
<option>Inactive</option> 
</select>
<input type="submit" class="btn btn-danger spacingX btnS" value="update status"/> 

</body>
</html>