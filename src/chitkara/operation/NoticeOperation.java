package chitkara.operation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import chitkara.dao.Userdao;

import chitkara.dao.NoticeDao;
import chitkara.dao.ProfileDao;
import p1.db.DBconnection;

public class NoticeOperation {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public ResultSet showNotice() {
		try {
			
			con=DBconnection.getCon();
			stmt=con.prepareStatement("select * from notice");
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	public static int addNotice(NoticeDao notice) {
		int i=0;
		try {
			con=DBconnection.getCon();
			stmt=con.prepareStatement("insert into notice(notice,subject,date) values(?,?,?"
					+ ")");
			stmt.setString(1, notice.getNotice());
			stmt.setString(2, notice.getDate());
			stmt.setString(3, notice.getSubject());
			
			i=stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	// TODO Auto-generated method stub
	}

}
	