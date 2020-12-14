package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection_DB.DatabaseConnection;
import entity.*;

public class UsersDAO {

	public List<Users> getUsers() throws ClassNotFoundException, SQLException
	{
		List<Users> list = new ArrayList<Users>();
		DatabaseConnection db = new DatabaseConnection();
		Connection con = db.conn();
		
		 String sql = "select * from users";
		 Statement st=con.createStatement();
		 
		 ResultSet rs = st.executeQuery(sql);
		 while(rs.next())
		 {
			
		   Users userObj = new Users();
		   userObj.setId(rs.getInt("id"));
		   userObj.setFirst_name(rs.getString("first_name"));
		   userObj.setLast_name(rs.getString("last_name"));
		   userObj.setEmail(rs.getString("email"));
		   userObj.setCountry(rs.getString("country"));
		   list.add(userObj);

		
		 }
		 db.conClose();
		 
		 return list;
	}
	
	public Users getUserDetails(String username, String password) throws ClassNotFoundException, SQLException
	{
		Users user = new Users();
		DatabaseConnection db = new DatabaseConnection();
		Connection con = db.conn();
		
		
		 PreparedStatement pstmt = null;
		 String sql = "select * from users where username=? and password1=?";
		    pstmt = con.prepareStatement(sql);
		    
		    pstmt.setString(1, username);
		    pstmt.setString(2, password);
		  	    
		    ResultSet rs = pstmt.executeQuery();
		 if(rs.next())
		 {
			
		  user= new Users(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),
				   rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12));

		 }
		 db.conClose();
		 
		 return user;
	}
	
	public boolean updatePassword(int id, String oldPassword, String newPassword) throws ClassNotFoundException, SQLException
	{
	
		DatabaseConnection db = new DatabaseConnection();
		Connection con = db.conn();
		boolean passwordChanged = false;
		
		
		 PreparedStatement pstmt = null;
		 String sql = "update users set password1=? where id=? and password1=?";
		    pstmt = con.prepareStatement(sql);
		    
		    pstmt.setString(1, newPassword);
		    pstmt.setInt(2, id);
		    pstmt.setString(3, oldPassword);
		  	    
		    int isPasswordUpdated = pstmt.executeUpdate();
		 
		    if(isPasswordUpdated>0)
		    {
		    	passwordChanged = true;
		    }
		    
		 db.conClose();
		 
		 return passwordChanged;
	}
	
	public List<TestScore> getUserResult(int id) throws ClassNotFoundException, SQLException
	{
		List<TestScore> scoreList = new ArrayList<TestScore>();
		DatabaseConnection db = new DatabaseConnection();
		Connection con = db.conn();
		
		
		 PreparedStatement pstmt = null;
		 String sql = "select * from test_score where user_id=?";
		    pstmt = con.prepareStatement(sql);
		    
		    pstmt.setInt(1, id);
		 
		  	    
		    ResultSet rs = pstmt.executeQuery();
		    
		 while(rs.next())
		 {
			
		  scoreList.add(new TestScore(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4)));
		  

		 }
		 db.conClose();
		 
		 return scoreList;
	}
	
	public void postUserTestResult(String testCode, int score, int userId) throws ClassNotFoundException, SQLException
	{
	
		DatabaseConnection db = new DatabaseConnection();
		Connection con = db.conn();
		
		 PreparedStatement pstmt = null;
		 
		 String sql = "insert into test_score(id,test_code,score,user_id) values(test_score_seq.nextval,?,?,?)";
		    pstmt = con.prepareStatement(sql);
		    
		    pstmt.setString(1, testCode);
		    pstmt.setInt(2, score);
		    pstmt.setInt(3, userId);
		   ResultSet val= pstmt.executeQuery();
		    
		 
			
		  System.out.println("Result submitted!");
		  

		
	
	}

}

// create sequence test_score_seq start with 1 increment by 1;

// insert into test_score values(test_score_seq.nextval,'java1', 5,1000);

