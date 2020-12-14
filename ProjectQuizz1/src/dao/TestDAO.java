package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import connection_DB.DatabaseConnection;
import entity.Test;
import entity.TestDetails;
import entity.Users;

public class TestDAO {
	public List<Test> allActiveTest() throws ClassNotFoundException, SQLException
	{
		List<Test> testList = new ArrayList<>();
		DatabaseConnection db = new DatabaseConnection();
		Connection con = db.conn();
		
		 String sql = "select id,test_name,status from test";
		 Statement st=con.createStatement();
		 
		 ResultSet rs = st.executeQuery(sql);
		 while(rs.next())
		 {
			
		   Test testObj = new Test(rs.getInt(1), rs.getString(2), rs.getString(3));

		   testList.add(testObj);

		 }
		 db.conClose();
		 System.out.println("Test retrieved from db");
		 return testList;
	}
	

	public TestDetails testDetails(int id) throws ClassNotFoundException, SQLException
	{
		TestDetails testDetails = null;
		DatabaseConnection db = new DatabaseConnection();
		Connection con = db.conn();
		
		PreparedStatement pstmt = null;
		String sqlQuery = "select id,timeInMinute ,topic from test_details where test_id=?";
	    pstmt = con.prepareStatement(sqlQuery);
	    pstmt.setInt(1, id);
	    ResultSet rs = pstmt.executeQuery();
	    
		 while(rs.next())
		 {	
			 testDetails = new TestDetails(rs.getInt(1),rs.getInt(2),rs.getString(3));
			
		 }
		 System.out.println("Test details retrieved from db");
		 return testDetails;
	}
	
	
	


}





//create table test_details(
//		id number not null primary key,
//		timeInMinute number not null,
//		topic varchar(255) not null,
//		test_id number not null,foreign key(test_id) references test(id)
//		);

//create sequence test_details_seq start with 100 increment by 1;

//insert into test_details values(event_seq.nextval,20,'Java1',6);




 
//  create table CPP(
//  id number not null primary key,
//  question varchar(1000) not null,
//  answer1 varchar(255),
//   answer2 varchar(255),
//    answer3 varchar(255),
//     answer4 varchar(255),
//     right_option varchar(2),
//     comments varchar(1000)
//     );
// create sequence test_cpp_seq start with 1000 increment by 1;
//
// insert into CPP values(
//          test_cpp_seq.nextval,
//       'Wasdhat is theadsf size oasdff shasdfort variable?',
//       'adsf8ds bit',
//       'ads16asdf bit',
//       'asd3asdf2 bit',
//          '6sdaf4 bit',
//       'C',
//       'dfdsf asdf'
//		 );


