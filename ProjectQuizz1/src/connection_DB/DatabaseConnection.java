package connection_DB;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {

	Connection con = null;
	 String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	 String user = "system";
	 String password = "tiger";
	 Statement st;
	
 // Create connection method
	 public Connection conn() throws ClassNotFoundException, SQLException
	 {
		 Class.forName("oracle.jdbc.driver.OracleDriver");
	     con = DriverManager.getConnection(url,user,password);
	     return con;
	 }
	 // close connection method
	 public void conClose() throws SQLException {
		 con.close();
	 }
}
