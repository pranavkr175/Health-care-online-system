package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecialistDao;
import com.db.DBConnect;
import com.entity.User;
@WebServlet("/addspecialist")
public class AddSpecialist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String specname=req.getParameter("specname");
				SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
				boolean f=dao.addSpecialist(specname);
				
				HttpSession session=req.getSession();
				if(f){
					session.setAttribute("succ", "specialist added");
					resp.sendRedirect("admin/index.jsp");
				} else {
					session.setAttribute("error", "something went wrong ");
					resp.sendRedirect("admin/index.jsp");
				}
	}

	
}
