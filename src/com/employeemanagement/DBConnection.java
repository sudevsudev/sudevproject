package com.employeemanagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBConnection {
	  public static Connection getCon(){  
	  Connection con=null;  
	  try{  
		   Class.forName("oracle.jdbc.driver.OracleDriver");  
		   con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sudev");
     }
	  catch(Exception e) {
		  System.out.println(e);
	  }
	  return con;
	  }
//	  public static boolean checkUser(String name,String pass) 
//	     {
//	      boolean st =false;
//	      try{
//	    	  Connection con=DBConnection.getCon();
//		
//	         PreparedStatement ps =con.prepareStatement
//	                             ("select * from register where username=? and password=?");
//	         ps.setString(1, name);
//	         ps.setString(2, pass);
//	         ResultSet rs =ps.executeQuery();
//	         st = rs.next();
//	        
//	      }catch(Exception e)
//	      {
//	          e.printStackTrace();
//	      }
//	         return st;                 
//	  }   
}

