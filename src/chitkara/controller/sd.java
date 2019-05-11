package chitkara.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chitkara.dao.ComplaintDao;
import chitkara.dao.Userdao;
import p1.db.DBconnection;

/**
 * Servlet implementation class status
 */

public class sd extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try
	{
		  sd a=new sd();  
		  HttpSession session=request.getSession(false);
		  ComplaintDao complaint=new ComplaintDao();
		  //System.out.println(request.getParameter("id"));
		  complaint.setComplaint_no(request.getParameter("complaint_no"));
		  String c=request.getParameter("complaint_no");
		  //System.out.println(complaint.getComplaint_no());
		  a.approve(c);
		  response.sendRedirect("showcomplaint.jsp");
	}
	catch(Exception e)
	{
		System.out.print(e);
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	public void approve(String c)
	{
		 PreparedStatement stmt=null;
		 Connection con=null;
		 ResultSet rs=null;
		 try {
				int i=0;
			 	con=DBconnection.getCon();
				stmt=con.prepareStatement("update complaint set status='declined' where complaint_no=?");
				stmt.setString(1, c);
				i=stmt.executeUpdate();
				if(i>0)
				{
					System.out.print("updated");
				}
				else
				{
					System.out.print("not-updated");
				}
		 }
				catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		
	}


