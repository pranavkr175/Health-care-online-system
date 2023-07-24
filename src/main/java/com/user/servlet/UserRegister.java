package com.user.servlet;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

import java.io.IOException;

@SuppressWarnings("serial")
@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String fullname=req.getParameter("Fullname");
			String email=req.getParameter("Email");
			String password=req.getParameter("Password");
			
			User u=new User(fullname,email,password);
			UserDao dao=new UserDao(DBConnect.getConn());
			HttpSession session = req.getSession();
			boolean f=dao.register(u);
			if(f) {
				session.setAttribute("succ", "Register Succesfull");
				resp.sendRedirect("Signup.jsp");
			}else {
				session.setAttribute("error", "Something went wrong");
				resp.sendRedirect("Signup.jsp");
			}
		
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	
}
