package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection_DB.DatabaseConnection;
import entity.*;

public class SignUp {

	public boolean addNewUser(Users user) throws ClassNotFoundException, SQLException
	{
		boolean userAdded = false;
		DatabaseConnection db = new DatabaseConnection();
		Connection con = db.conn();
		PreparedStatement pstmt = null;
		String sqlQuery = "insert into users(id,first_name, last_name, email, gender, dob, username, password1, password2,dateOfJoin, country, state)"
				+ "values(?,?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?) ";
	    pstmt = con.prepareStatement(sqlQuery);
	    pstmt.setInt(1, user.getId());
	    pstmt.setString(2, user.getFirst_name());
	    pstmt.setString(3, user.getLast_name());
	    pstmt.setString(4, user.getEmail());
	    pstmt.setString(5, user.getGender());
	    pstmt.setString(6, user.getDob());
	    pstmt.setString(7, user.getUsername());
	    pstmt.setString(8, user.getPassword1());
	    pstmt.setString(9, user.getPassword2());
	    pstmt.setString(10, user.getDateOfJoin());
	    pstmt.setString(11, user.getCountry());
	    pstmt.setString(12, user.getState());
	    
	    int rowsInserted = pstmt.executeUpdate();
	    if (rowsInserted > 0) {
	        System.out.println("A new user was inserted successfully!");
	        userAdded = true;
	    }
		return userAdded;
		
	}

}

/**
create table users(
	id number primary key,
	first_name varchar(30) not null,
	last_name varchar(30),
	email varchar(30) not null unique,
	gender varchar(10),
	dob varchar(30),
	username varchar(100) not null unique,
	password1 varchar(100) not null,
	password2 varchar(100) not null,
	dateOfJoin varchar(100),
	country varchar(255),
	state varchar(255),

    
	);
	
	
**/

/**
    insert into users(id, first_name, last_name, email, gender, dob, username, password1, password2,dateOfJoin, country, state) 
               values(1000,'naveen', 'sharma', 'nks326327@gmail.com', 'male', '02021997', 'naveen_sharma', 'nav@@', 'nav@@','10122020', 'India', 'Delhi');
    
    select username,password1 from users where username= and password1=?
 *
 */

