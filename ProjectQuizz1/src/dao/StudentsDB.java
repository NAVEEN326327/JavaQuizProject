package dao;
//package model;
//
//import connection_DB.*;
//import objects.Students;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.ArrayList;
//import java.util.List;
//
//public class StudentsDB {
//	
//	public List<Students>  getAllEmpDetails() throws ClassNotFoundException, SQLException
//	 { 
//		List<Students> list = new ArrayList<Students>();
//		DatabaseConnection db = new DatabaseConnection();
//		Connection con = db.conn();
//		 String sql = "select * from students";
//		 Statement st=con.createStatement();
//		 
//		 ResultSet rs = st.executeQuery(sql);
//		 while(rs.next())
//		 {
//			 int id = rs.getInt("id");
//			 String firstName = rs.getString("firstname");
//			 String lastName = rs.getString("lastname");
//			 String dob = rs.getString("dob");
//			 String collegeName = rs.getString("collegeName");
//			
//			 Students student = new Students(id,firstName,lastName,dob,collegeName);
//			 list.add(student);
//
//			
//
//		 }
//		 
//		 db.conClose();
//		return list;
//	 }
//	
//	
//}
