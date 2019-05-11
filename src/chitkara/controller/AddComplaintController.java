package chitkara.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chitkara.dao.ComplaintDao;

import chitkara.dao.Userdao;
import chitkara.operation.ComplaintOperation;
import chitkara.operation.UserOperation;

public class AddComplaintController extends HttpServlet {
  public void doGet(HttpServletRequest request,HttpServletResponse response) {
	  doPost(request,response);
  }
  public void doPost(HttpServletRequest request,HttpServletResponse response) {
	  try {
		  HttpSession session=request.getSession(false);
		  Userdao user=(Userdao)session.getAttribute("user");
		  ComplaintDao complaint=new ComplaintDao();
		  complaint.setComplaint(request.getParameter("complaint"));
		  //System.out.println("req complaint "+request.getParameter("complaint"));
		  complaint.setUid(user.getUid());
		  //System.out.println("uid "+user.getUid());
		  complaint.setDate(request.getParameter("date"));
		  int i=ComplaintOperation.addComplaint(complaint);
		  if(i>0) {
			  session=request.getSession(false);
			  //session.setAttribute("message", "Complaint Added Successfully");
			  response.sendRedirect("Complaintadded.html");
		  }
		  else {
			   session=request.getSession(false);
			  session.setAttribute("message","Complaint not added" );
			  response.sendRedirect("something.jsp");
		  }
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
  }
}
