package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection_DB.DatabaseConnection;

public class LoginDao {

	public boolean findUser(String username, String password) throws ClassNotFoundException, SQLException
	{
	boolean userexists = false;
	DatabaseConnection db = new DatabaseConnection();
	Connection con = db.conn();
	PreparedStatement pstmt = null;
	try {
	pstmt = con.prepareStatement("select username,password1 from users where username=? and password1=?");
	pstmt.setString(1, username);
	pstmt.setString(2, password);
	ResultSet rs = pstmt.executeQuery();
	// check whether the user exists or not
	if(rs.next())
	{
	userexists = true;
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	finally
	{
	try {
	
	con.close();
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	}
	return userexists;
	}
}



// To check all tables in db==> select table_name from tabs;
