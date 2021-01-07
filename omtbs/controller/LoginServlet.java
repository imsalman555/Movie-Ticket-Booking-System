package omtbs.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import omtbs.model.beans.CustomerBean;
import omtbs.model.dao.CustomerDAO;

//@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerBean cb=new CustomerBean();
		cb.setEmail(request.getParameter("email"));
		cb.setPassword(request.getParameter("password"));
		
		String usertype=CustomerDAO.validateLogin(cb);
		
		if(usertype.equalsIgnoreCase("customer")) {
			HttpSession hs=request.getSession();
			hs.setAttribute("usertype", cb.getUsertype());
			response.sendRedirect("customerhome.jsp");
		}
		else if(usertype.equalsIgnoreCase("admin")) {
			HttpSession hs=request.getSession();
			hs.setAttribute("usertype", cb.getUsertype());
			response.sendRedirect("adminhome.jsp");
		}
		else
			response.sendRedirect("login.jsp");
		
	}

}
