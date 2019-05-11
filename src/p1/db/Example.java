package p1.db;
import java.sql.*;
public class Example {
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
	public void getData()
{
		try
		{
			con=DBconnection.getCon();
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from user");
			while(rs.next())
			{
				System.out.println(rs.getInt("id")+" "+rs.getString(2)+" "+rs.getString(3));
			}
		} 
		catch(Exception e)
		{
			e.printStackTrace();
		}
}
	public void update(String s)
	{
		try
		{
			con=DBconnection.getCon();
			PreparedStatement stmtx=con.prepareStatement("update user set fn=? where id=101");
			stmtx.setString(1,s);
			stmtx.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
    Example a=new Example();
    a.getData();
    a.update("new");
    a.getData();
	}

}
