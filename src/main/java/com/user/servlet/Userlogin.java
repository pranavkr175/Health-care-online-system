package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/userlogin")
public class Userlogin extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			String pass=req.getParameter("password");
			
			HttpSession session=req.getSession();
			
			UserDao dao=new UserDao(DBConnect.getConn());
			User user=dao.login(email, pass);
			
			if(user!=null){
				session.setAttribute("userobj",user);
				resp.sendRedirect("index.jsp");
			} else {
				session.setAttribute("error", "Invalid email/password");
				resp.sendRedirect("user_login.jsp");
			}
			
		} catch (Exception e) {
		
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

	
}
