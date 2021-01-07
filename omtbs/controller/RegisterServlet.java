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

//@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerBean cb=new CustomerBean();
		cb.setName(request.getParameter("name"));
		cb.setEmail(request.getParameter("email"));
		cb.setPassword(request.getParameter("password"));
		cb.setCcardnumber(request.getParameter("ccn"));
		cb.setAddress(request.getParameter("address"));
		cb.setPhone(request.getParameter("phone"));
		cb.setGender(request.getParameter("gender"));
		
		boolean isRegister=CustomerDAO.validateRegister(cb);
		if(isRegister==true) {
			HttpSession hs=request.getSession();
			hs.setAttribute("usertype", cb.getUsertype());
			response.sendRedirect("customerhome.jsp");
		}
		else
			response.sendRedirect("register.jsp");
	}
}