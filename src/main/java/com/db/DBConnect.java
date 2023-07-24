package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
private static Connection conn;
public static Connection getConn() {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","1234");
		
		if(conn!=null) {
			System.out.println("Connected"+conn);
		}else {
			System.out.println("not connected");
		}
		
	}
	
	
	
	
	catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return conn;
}
}
