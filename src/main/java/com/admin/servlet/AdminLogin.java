package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String email=req.getParameter("email");
			String pass=req.getParameter("password");
			HttpSession session=req.getSession();
			if("admin@gmail.com".equals(email) && "12345".equals(pass)){
				session.setAttribute("adminobj", new User());
				resp.sendRedirect("admin/index.jsp");
			} else {
				session.setAttribute("error", "Invalid email/password");
				resp.sendRedirect("admin_login.jsp");
			}
			
		} catch (Exception e) {
		
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

}
