package chitkara.operation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import chitkara.dao.Userdao;
import chitkara.dao.ProfileDao;
import p1.db.DBconnection;

public class ProfileOperation {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public ResultSet showProfile(String uid) {
		try {
			System.out.println(uid);
			con=DBconnection.getCon();
			stmt=con.prepareStatement("select * from profile where uid=?");
			stmt.setString(1, uid);
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static int addstudent(ProfileDao profile) {
		int i=0;
		try {
			con=DBconnection.getCon();
			stmt=con.prepareStatement("insert into profile values(?,?,?,?,?,?,?,?,?,?"
					+ ")");
			stmt.setString(1, profile.getFirst_name());
			stmt.setString(2, profile.getLast_name());
			stmt.setString(3, profile.getUid());
			stmt.setString(4, profile.getFather_name());
			stmt.setString(5, profile.getMother_name());
			stmt.setString(6, profile.getMobile_no());
			stmt.setString(7, profile.getFather_mobile_no());
			stmt.setString(8, profile.getEmail());
			stmt.setString(9, profile.getDob());
			stmt.setString(10, profile.getAddress());
			
			i=stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	// TODO Auto-generated method stub
	}

}
