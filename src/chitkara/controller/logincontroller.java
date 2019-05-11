package chitkara.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chitkara.dao.Userdao;
import chitkara.operation.UserOperation;

public class logincontroller extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request,response);
	}
		 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 Userdao user=new Userdao();
		 user.setUid(request.getParameter("uid"));
		 user.setPwd(request.getParameter("pwd"));
		 user=UserOperation.login(user);
		 PrintWriter out=response.getWriter();
		 if(user!=null&&user.getUsertype().equalsIgnoreCase("admin")) {
			//request.getRequestDispatcher("dashboard.html").include(request, response);
			 HttpSession session=request.getSession(true);
			 session.setAttribute("user", user);
			 
			 response.sendRedirect("admin.jsp");
		 }
		 else if(user!=null&&user.getUsertype().equalsIgnoreCase("user")) {
			 HttpSession session=request.getSession(true);
			 session.setAttribute("user", user);
			 response.sendRedirect("dashboard.jsp?id="+session.getId());
		 }
		 
		 
		 else {
			 response.sendRedirect("login.jsp");
		 }
	}

}
