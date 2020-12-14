package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection_DB.DatabaseConnection;
import entity.TestDetails;
import entity.TestQuestions;

public class TestStartWithTestCodeDAO {

	public List<TestQuestions> getTestQuestions(String testCode) throws ClassNotFoundException, SQLException
	{
		
		List<TestQuestions> testQuestionsList = new ArrayList<>();
		DatabaseConnection db = new DatabaseConnection();
		Connection con = db.conn();
		
		
		 String sqlQuery = "select * from "+testCode;
          Statement st=con.createStatement();
		 
		 ResultSet rs = st.executeQuery(sqlQuery);
	    
		 while(rs.next())
		 {	
			 TestQuestions obj = new TestQuestions();
			 
			 obj.setId(rs.getInt(1));
			 obj.setQuestions(rs.getString(2));
			 obj.setAnswer1(rs.getString(3));
			 obj.setAnswer2(rs.getString(4));
			 obj.setAnswer3(rs.getString(5));
			 obj.setAnswer4(rs.getString(6));
			 obj.setRightOption(rs.getString(7));
			 obj.setComments(rs.getString(8));
			 
			 testQuestionsList.add(obj);
		 }
//		 System.out.println("Test details retrieved from db");
		 return testQuestionsList;
	}
}

//int id;
//String questions;
//String answer1;
//String answer2;
//String answer3;
//String answer4;
//String rightOption;
//String comments;
