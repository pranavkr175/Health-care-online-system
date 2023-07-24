package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDao {
	private Connection conn;

	public UserDao(Connection conn) {
		super();
		// TODO Auto-generated constructor stub
		this.conn=conn;
	}
	
	public boolean register(User u) {
		boolean f=false;
		try {
			String sql="insert into user_details(full_name,email,password) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, u.getFullname());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			
			int i=ps.executeUpdate();
			
			if(i==1)
				f=true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return f;
	}
	
	public User login(String em,String ps) {
		User u=null;
		try {
			String sql="select * from user_details where email=? and password=?";
			PreparedStatement ps1=conn.prepareStatement(sql);
			ps1.setString(1, em);
			ps1.setString(2, ps);
			ResultSet rs=ps1.executeQuery();
			
			while(rs.next()) {
				u=new User();
				u.setId(rs.getInt(1));
				u.setFullname(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
			}
			
		} catch (Exception e) {
					e.printStackTrace();
			// TODO: handle exception
		}
		
		return u;
		
	}
	
	
}
