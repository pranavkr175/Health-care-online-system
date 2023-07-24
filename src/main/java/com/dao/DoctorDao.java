package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Doctor;
import com.mysql.cj.protocol.Resultset;

public class DoctorDao {

	private Connection conn;

	public DoctorDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean registerDoctor(Doctor d) {
		boolean f=false;
		try {
			String sql="insert into doctor(fullname,dob,qualification,specialist,email,mobno,password) values(?,?,?,?,?,?,?)";
			PreparedStatement ps= conn.prepareStatement(sql);
			
			ps.setString(1, d.getFullname());
			ps.setString(2, d.getDob());
			ps.setString(3, d.getQualification());
			ps.setString(4, d.getSpecialist());
			ps.setString(5, d.getEmail());
			ps.setString(6, d.getMobno());
			ps.setString(7, d.getPassword());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		return f;
		
	}
	
	public ArrayList<Doctor> getAlldoctor(){
		
		ArrayList<Doctor> list= new ArrayList<Doctor>();
		Doctor d=null;
		try {
			
			String sql="select * from doctor order by id desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) 
			{
				d=new Doctor();
				d.setId(rs.getInt(1));
				d.setFullname(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialist(rs.getNString(5));
				d.setEmail(rs.getString(6));
				d.setMobno(rs.getString(7));
				d.setPassword(rs.getString(8));
				list.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	
	
public Doctor getDoctorById(int id){
		
		Doctor d=null;
		try {
			
			String sql="select * from doctor where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) 
			{
				d=new Doctor();
				d.setId(rs.getInt(1));
				d.setFullname(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialist(rs.getNString(5));
				d.setEmail(rs.getString(6));
				d.setMobno(rs.getString(7));
				d.setPassword(rs.getString(8));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return d;
		
	}


public boolean UpadateDoctor(Doctor d) {
	boolean f=false;
	try {
		String sql="update doctor set fullname=?,dob=?,qualification=?,specialist=?,email=?,mobno=?,password=? where id=?";
		PreparedStatement ps= conn.prepareStatement(sql);
		
		ps.setString(1, d.getFullname());
		ps.setString(2, d.getDob());
		ps.setString(3, d.getQualification());
		ps.setString(4, d.getSpecialist());
		ps.setString(5, d.getEmail());
		ps.setString(6, d.getMobno());
		ps.setString(7, d.getPassword());
		ps.setInt(8, d.getId());
		int i=ps.executeUpdate();
		if(i==1) {
			f=true;
		}
	}
	catch (Exception e) {
		// TODO: handle exception
	}
	
	return f;
	
}
	
}
