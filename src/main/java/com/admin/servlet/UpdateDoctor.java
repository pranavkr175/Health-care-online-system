package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;
@WebServlet("/updatedoc")
public class UpdateDoctor extends HttpServlet {

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
			
			int id=Integer.parseInt(req.getParameter("id"));
			
			Doctor d=new Doctor(id,fullname, dob, qualification, specification, email, mobno, password);
			
			DoctorDao dao = new DoctorDao(DBConnect.getConn());
			javax.servlet.http.HttpSession session = req.getSession();
			
			
				session.setAttribute("succ", "Doctor updated successfully");
				resp.sendRedirect("admin/doctor.jsp");
			
			
		} catch (Exception e) {
			// TODO: handle exception
			
		}
	}

	
	
}
