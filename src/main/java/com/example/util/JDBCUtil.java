package com.example.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtil {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        con= DriverManager.getConnection("jdbc:mysql://walab.handong.edu:3306/p1_22000177","p1_22000177","gamuD9yiek");
	    }catch(Exception e){
	    	System.out.println(e);
	    }  
	    return con;  
	}  
	
	//public static void main(String ars[]) {
	//	Connection conn = getConnection();
	//	if(conn != null)
	//		System.out.println("DB 연결됨!");
	//	else
	//		System.out.println("DB 연결중 오류 !");
	//}
}