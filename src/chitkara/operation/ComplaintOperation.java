package chitkara.operation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import chitkara.dao.ComplaintDao;
import chitkara.dao.Userdao;
import p1.db.DBconnection;

public class ComplaintOperation {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public ResultSet showComplaint() {
		try {
			con=DBconnection.getCon();
			stmt=con.prepareStatement("select * from complaint");
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	public ResultSet showUsers
	() {
		try {
			con=DBconnection.getCon();
			stmt=con.prepareStatement("select * from complaint");
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	/*public static ComplaintDao complaint(ComplaintDao complaint) {
		try {
			con=DBconnection.getCon();
			stmt=con.prepareStatement("select * from user where uid=?");
			stmt.setString(1, complaint.getUid());
			rs=stmt.executeQuery();
			if(rs.next()) {
				//System.out.println(rs.getString("first_name")+" "+rs.getString("last_name"));
				complaint.setComplaint(rs.getString("complaint"));
				complaint.setDate(rs.getString("date"));
			} 
			else {
				System.out.println("in null");
				return null;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return complaint;
	}*/
	
	public static int addComplaint(ComplaintDao complaint) {
		int i=0;
		try {
			con=DBconnection.getCon();
			stmt=con.prepareStatement("insert into complaint(complaint,date,uid) values(?,?,?"+ ")");
			//System.out.print(complaint.getComplaint());
			stmt.setString(1, complaint.getComplaint());
			stmt.setString(2, complaint.getDate());
			stmt.setString(3, complaint.getUid());
			i=stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}
}
