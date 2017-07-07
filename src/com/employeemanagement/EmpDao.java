package com.employeemanagement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmpDao {
	 public static int save(Emp e){  
	        int status=0;  
	        try{  
	        	System.out.println("sudev");
	        	Connection con=DBConnection.getCon(); 
	          Statement statement=con.createStatement(); 
//	          int a=statement.executeUpdate("create table Name(fname varchar2(30),"
//	          		+ "FirstName varchar2(30),"
//	          		+ "lname varchar2(30))");
//	          PreparedStatement ps1=con.prepareStatement(  
//                      "insert into Name(fname,lname) values (?,?)");
//	          ps1.setString(1, name.getFname());
//	          ps1.setString(2, name.getLname());
//	          status=ps1.executeUpdate();
	          String q1="Create sequence eid start with 1 increment by 1 minvalue 1 maxvalue 500";
//	          int a=statement.executeUpdate(q1);
//	         
//	          int b=statement.executeUpdate("create table Employee12(Id number(10),"	        	 		
//	        	 		+ "FirstName varchar2(30),"
//	        	 		+ "LastName varchar2(30),"
//	        	 		+ "Email varchar2(30),"
//	        	 		+ "Dateofjoin varchar2(30),Day number(2),Year number(4),"
//	        	 		+ "Department varchar2(30),"
//	        	 		+ "Salary number(20),"
//	        	 		+ "Experience varchar2(30),"
//	        	 		+ "Street1 varchar2(30),"
//	        	 		+ "Street2 varchar2(30),"
//	        	 		+ "City varchar2(30),"
//	        	 		+ "State varchar2(30),"
//	        	 		+ "ZipCode varchar2(30),"
//	        	 		+ "phone number(20),"
//	        	 		+ "Qualification varchar2(30),"
//	        	 		+ "College varchar2(30),"
//	        	 		+ "Complitionyear varchar2(30),"
//	        	 		+ "Contact varchar2(30),"
//	        	 		+ "Status varchar2(30),constraint emp_identity PRIMARY KEY(id))");
	          
	          String q2="CREATE OR REPLACE TRIGGER aaa "
	        		 +"BEFORE INSERT ON Employee12 "
	        		  +"FOR EACH ROW "
	        		+"BEGIN "
	        		  +"SELECT eid.nextval "
	        		    +"INTO :new.Id "
	        		    +"FROM dual; "
	        		+"END;";
	          int c=statement.executeUpdate(q2);
	          
	            PreparedStatement ps2=con.prepareStatement("insert into Employee12(FirstName,LastName,Email,Dateofjoin,Day,Year,Department,Salary,"
	            		+ "Experience,Street1,Street2,City,State,ZipCode,phone,Qualification,College,Complitionyear,"
	            		+ "Contact,Status) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	                           
	           // ps2.setInt(1, employeeid.nextval); 
	            ps2.setString(1, e.getFname());
	            ps2.setString(2, e.getLname());
	            ps2.setString(3, e.getEmail());
	            ps2.setString(4, e.getDate());
	            ps2.setInt(5, e.getDay());
	            ps2.setInt(6, e.getYear());
	            ps2.setString(7, e.getDepartment());
	            ps2.setInt(8, e.getSalary());
	            ps2.setString(9, e.getExperience());
	            ps2.setString(10, e.getStreet1());
	            ps2.setString(11, e.getStreet2());
	            ps2.setString(12, e.getCity());
	            ps2.setString(13, e.getState());
	            ps2.setString(14, e.getZipcode());
	            ps2.setInt(15, e.getPhone());
	            ps2.setString(16, e.getQualification());
	            ps2.setString(17, e.getCollege());
	            ps2.setString(18, e.getComplitionyear());
	            ps2.setString(19, e.getContact());
	            ps2.setString(20, e.getStatus());
	            
	            status=ps2.executeUpdate(); 	          
//	          System.out.println(a); 
	          System.out.println(ps2);
//	          System.out.println(b);
	          System.out.println(c);
	            con.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return status;  
	    }
	 //selecting the employees to display the data
	 public static List<Emp> getAllEmployees(){  
	        List<Emp> list=new ArrayList<Emp>();  
	          
	        try{  
	        	Connection con=DBConnection.getCon();   
	            PreparedStatement ps=con.prepareStatement("select * from Employee12");  
	            ResultSet rs=ps.executeQuery();  
	            while(rs.next()){  
	                Emp e=new Emp();  
	                e.setId(rs.getInt(1));
	                e.setFname(rs.getString(2));
	                e.setLname(rs.getString(3));
	                e.setEmail(rs.getString(4));
	                e.setDate(rs.getString(5));
	                e.setDay(rs.getInt(6));
	                e.setYear(rs.getInt(7));
	                e.setDepartment(rs.getString(8));
	                e.setContact(rs.getString(20));
	                e.setQualification(rs.getString(17));
	                //status
	                e.setStatus(rs.getString(21));
	                //address
	                e.setStreet1(rs.getString(11));
 
	                //adding the object to list
	                list.add(e);  
	            }  
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return list;  
	    } 
	 
	 //Update
	 public static int update(Emp e){  
	        int status=0;  
	        try{  
	        	Connection con=DBConnection.getCon();  
//	            PreparedStatement ps=con.prepareStatement("update Employee set FirstName=?,LastName=?,Email=?,Dateofjoin=?,Department=?,Salary=?,"
//	            		+ "Experience=?,Street1=?,Street2=?,City=?,State=?,ZipCode=?,phone=?,Qualification=?,College=?,Complitionyear=?,"
//	            		+ "Contact=?,Status=? where id=?"); 
	        	System.out.println("start of update");
	        	 PreparedStatement ps=con.prepareStatement("update Employee12 set FirstName=?,LastName=?,Email=?,Dateofjoin=?,Day=?,Year=?,Department=?,"
		            		+ "Qualification=?,Contact=? where Id=?");
		            		 
	            ps.setString(1, e.getFname());
	            ps.setString(2, e.getLname());
	            ps.setString(3, e.getEmail());
	            ps.setString(4, e.getDate());
	            ps.setInt(5, e.getDay());
	            ps.setInt(6, e.getYear());
	            ps.setString(7, e.getDepartment());	        
	            ps.setString(8, e.getQualification());
	            ps.setString(9, e.getContact()); 
	            ps.setInt(10, e.getId());
	           
	            
	            status=ps.executeUpdate();  
	            System.out.println("end of update");  
	            con.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return status;  
	    }  
	  
	 
	 //delete employee
	  public static int delete(int id){  
	        int status=0;  
	        try{  
	        	Connection con=DBConnection.getCon();
	        	Statement statement=con.createStatement(); 
	            PreparedStatement ps=con.prepareStatement("delete from Employee12 where id=?");   
	            ps.setInt(1, id);  
	            status=ps.executeUpdate(); 
//	            String q1="ALTER SEQUENCE eid INCREMENT BY 1";
//		          int a=statement.executeUpdate(q1);
//	              System.out.println(a);
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return status;  
	    }  
	  
	 // get employee by id
	  public static Emp getEmployeeById(int id){  
	        Emp e=new Emp();  
	          
	        try{  
	        	Connection con=DBConnection.getCon();  
	            PreparedStatement ps=con.prepareStatement("select * from Employee12 where id=?");  
	            ps.setInt(1, id); 
	            ResultSet rs=ps.executeQuery();  
	            if(rs.next()){  
	                e.setId(rs.getInt(1));
	                e.setFname(rs.getString(2));
	                e.setLname(rs.getString(3));
	                e.setEmail(rs.getString(4));
	                e.setDate(rs.getString(5));
	                e.setDay(rs.getInt(6));
	                e.setYear(rs.getInt(7));
	                e.setDepartment(rs.getString(8));
	                e.setContact(rs.getString(20));
	                e.setQualification(rs.getString(17));
	                e.setStatus(rs.getString(21));
	                //address
	                e.setStreet1(rs.getString(11));
	                e.setStreet2(rs.getString(12));
	                e.setCity(rs.getString(13));
	                e.setState(rs.getString(14));
	                e.setZipcode(rs.getString(15));
	                e.setPhone(rs.getInt(16)); 
	            }  
	            con.close();  
	        }catch(Exception ex)
	        {
	        	ex.printStackTrace();
	        }    
	        return e;  
	    }
	  
		 //change Status
		 public static int Status1(String status,int id){  
		        int replay=0;  
		        try{  
		        	Connection con=DBConnection.getCon();
		        	PreparedStatement ps=null;		        	
		        	System.out.println(status);
		        	 ps=con.prepareStatement("update Employee12 set Status=? where Id=?");
			    	 if(status=="Active") {
		        	 ps.setString(1, "Inactive"); 
			           ps.setInt(2, id);
			    	 }
			           else{ 
				    	   ps.setString(1, "Active"); 
				           ps.setInt(2, id);			           
			    	 }
		            replay=ps.executeUpdate();    
		            con.close();  
		        }catch(Exception ex){ex.printStackTrace();}  
		          
		        return replay;  
		    } 
		 //change Status
		 public static int Status2(String status,int id){  
		        int replay=0;  
		        try{  
		        	Connection con=DBConnection.getCon();
		        	PreparedStatement ps=null;
		        	ps=con.prepareStatement("update Employee12 set Status=? where Id=?");
			    	   ps.setString(1, status); 
			           ps.setInt(2, id);
			           replay=ps.executeUpdate();  
		            con.close();  
		        }catch(Exception ex){ex.printStackTrace();}  
		          
		        return replay;  
		    }

}
