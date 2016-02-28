package com.demo.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DbHelper {
public DbHelper(){
	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public Connection getConnection(){
	try {
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sis","root","");
		return con;
	} catch (SQLException e) {
		return null;// TODO Auto-generated catch block
		}
}
public void closeConnection(Connection con){
if(null!=con){
	try{
		con.close();
	}catch (SQLException e){
		e.printStackTrace();
	}
	}
}
}
