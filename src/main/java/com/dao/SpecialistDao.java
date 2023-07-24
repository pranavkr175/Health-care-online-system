package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Specialist;
import com.mysql.cj.protocol.Resultset;

public class SpecialistDao {
	
	private Connection conn;

	public SpecialistDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addSpecialist(String spec) {
		boolean f=false;
		try {
			String sql="insert into specialist(spec_name)value(?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, spec);
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return f;
	}
	
	public ArrayList<Specialist> getAllSpecialist(){
		
		ArrayList<Specialist> list=new ArrayList<Specialist>();
		Specialist s=null;
		try {
			String sql="select * from specialist";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				s=new Specialist();
				s.setId(1);
				s.setName(rs.getString(2));
				list.add(s);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return list;
		
		
		
	}
	
	
}
