package p1.db;
import java.sql.*;

public class DBconnection implements Provider {

	static Connection con=null;


public static Connection getCon() throws SQLException
{
	try
	{
		Class.forName(driver);
		con=DriverManager.getConnection(url, uname, pwd);
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
return con;	
}

}
