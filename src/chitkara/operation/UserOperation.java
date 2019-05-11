

package chitkara.operation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import chitkara.dao.Userdao;
import p1.db.DBconnection;


public class UserOperation {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public static Userdao login(Userdao user) {
		try {
			con=DBconnection.getCon();
			stmt=con.prepareStatement("select * from user where uid=? and pass=?");
			stmt.setString(1, user.getUid());
			stmt.setString(2, user.getPwd());
			rs=stmt.executeQuery();
			if(rs.next()) {
				//System.out.println(rs.getString("first_name")+" "+rs.getString("last_name"));
				user.setFn(rs.getString("fn"));
				user.setLn(rs.getString("ln"));
				user.setId(rs.getInt("id"));
				user.setUsertype(rs.getString("usertype"));
			}  
			else {
				System.out.println("in null");
				return null;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public ResultSet showUsers() {
		try {
			
			con=DBconnection.getCon();
			stmt=con.prepareStatement("select * from user");
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static int addStudent(Userdao user) {
		int i=0;
		try {
			con=DBconnection.getCon();
			stmt=con.prepareStatement("insert into user(Fn,Ln,uid,pass,usertype,id) values(?,?,?,?,?,?"
					+ ")");
			stmt.setString(1, user.getFn());
			stmt.setString(2, user.getLn());
			stmt.setString(3, user.getUid());
			stmt.setString(4, user.getPwd());
			stmt.setString(5, user.getUsertype());
			stmt.setString(6, user.getUid());
			i=stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}

}
