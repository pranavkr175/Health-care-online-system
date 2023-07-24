package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;
@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String fullname= req.getParameter("fullname");
			String dob= req.getParameter("dob");
			String qualification= req.getParameter("quali");
			String specification= req.getParameter("spec");
			String email= req.getParameter("email");
			String mobno= req.getParameter("mob");
			String password= req.getParameter("pass");
			
			Doctor d=new Doctor(fullname, dob, qualification, specification, email, mobno, password);
			
			DoctorDao dao = new DoctorDao(DBConnect.getConn());
			HttpSession session = req.getSession();
			
			if(dao.registerDoctor(d)) {
				session.setAttribute("succ", "Doctor Added successfully");
				resp.sendRedirect("admin/doctor.jsp");
			}else {
				session.setAttribute("error", "Something went wrong");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	
}
