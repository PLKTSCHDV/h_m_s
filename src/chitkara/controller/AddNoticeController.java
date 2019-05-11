package chitkara.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chitkara.dao.ComplaintDao;

import chitkara.dao.Userdao;
import chitkara.dao.NoticeDao;
import chitkara.operation.ComplaintOperation;
import chitkara.operation.NoticeOperation;
import chitkara.operation.UserOperation;

public class AddNoticeController extends HttpServlet {
  public void doGet(HttpServletRequest request,HttpServletResponse response) {
	  doPost(request,response);
  }
  public void doPost(HttpServletRequest request,HttpServletResponse response) {
	  try {
		  HttpSession session=request.getSession(false);
		  NoticeDao notice=new NoticeDao();
		  notice.setNotice(request.getParameter("notice"));
		  //System.out.println("req complaint "+request.getParameter("complaint"));
		  //System.out.println("uid "+user.getUid());
		  notice.setDate(request.getParameter("date"));
		  notice.setSubject(request.getParameter("subject"));
		  int i=NoticeOperation.addNotice(notice);
		  if(i>0) {
			  session=request.getSession(false);
			  //session.setAttribute("message", "Complaint Added Successfully");
			  response.sendRedirect("Noticeadded.html");
		  }
		  else {
			   session=request.getSession(false);
			  session.setAttribute("message","Complaint not added" );
			  response.sendRedirect("addnotice.jsp");
		  }
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
  }
}
