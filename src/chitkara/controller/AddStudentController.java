package chitkara.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chitkara.dao.Userdao;
import chitkara.operation.UserOperation;
import chitkara.dao.ProfileDao;
import chitkara.operation.ProfileOperation;

public class AddStudentController extends HttpServlet {
  public void doGet(HttpServletRequest request,HttpServletResponse response) {
	  doPost(request,response);
  }
  public void doPost(HttpServletRequest request,HttpServletResponse response) {
	  try {
		  Userdao user=new Userdao();
		  user.setFn(request.getParameter("Fn"));
		  user.setLn(request.getParameter("Ln"));
		  user.setUid(request.getParameter("uid"));
		  user.setUsertype("User");
		  user.setPwd("123456");
		  ProfileDao profile=new ProfileDao();
		  profile.setFirst_name(request.getParameter("Fn"));
		  profile.setLast_name(request.getParameter("Ln"));
		  profile.setUid(request.getParameter("uid"));
		  profile.setFather_name(request.getParameter("Father_name"));
		  profile.setMother_name(request.getParameter("Mother_name"));
		  profile.setMobile_no(request.getParameter("Mobile_no"));
		  profile.setFather_mobile_no(request.getParameter("Father_mobile_no"));
		  profile.setEmail(request.getParameter("Email"));
		  profile.setDob(request.getParameter("Dob"));
		  profile.setAddress(request.getParameter("Address"));
		  int j=ProfileOperation.addstudent(profile);
		  int i=UserOperation.addStudent(user);
		  if(i>0 && j>0) {
			  HttpSession session=request.getSession(false);
			  session.setAttribute("message", "Student Added Successfully");
			  response.sendRedirect("added.html");
		  }
		  else {
			  HttpSession session=request.getSession(false);
			  session.setAttribute("message","Student not added" );
			  response.sendRedirect("addstudent.jsp");
		  }
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
  }
}
