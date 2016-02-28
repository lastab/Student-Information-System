package com.demo.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.demo.std.Student;
import com.demo.std.Teacher;

public class DbTeacher {
	public int AddTeacherInfo(Teacher tchr){
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="insert into teacher values(?,?,?,?,?,?,?)";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, tchr.getT_id());
			pre.setString(2, tchr.getfName()+" "+tchr.getmName()+" "+ tchr.getlName());
			pre.setString(3, tchr.getGender());
			pre.setString(4, tchr.getAddress());
			pre.setString(5, tchr.getPhone());
			pre.setString(6, tchr.getEmail());
			pre.setString(7, tchr.getPassword());
			System.out.print("Your data has been saved....!");
			int res=pre.executeUpdate();
			return res;

		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}finally{
			db.closeConnection(con);
		}
	}
	
	public int UpdateTeacherInfo(Teacher tchr)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try
		{
			con=db.getConnection();
			String sql = "UPDATE  teacher  SET "
					+ " Name  = ?,Gender  = ?,"
					+ " Address  = ?,"
					+ " Phone  = ?, Email  = ?, Password  = ? "
					+ "WHERE  teacher_id =?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setString(1, tchr.getmName());
			pre.setString(2, tchr.getGender());
			pre.setString(3, tchr.getAddress());
			pre.setString(4, tchr.getPhone());
			pre.setString(5, tchr.getEmail());
			pre.setString(6, tchr.getPassword());
			pre.setInt(7, tchr.getT_id());
			int res=pre.executeUpdate();
			return res;
		}
		catch(Exception e){
			e.printStackTrace();
			return 0;
		}
		finally
		{
			db.closeConnection(con);
		}
	}
	public int DeleteInfo(Teacher tchr)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="delete from teacher where Teacher_id=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, tchr.getT_id());
			System.out.print("The Deleted Data is"+ tchr.getT_id() +","+ tchr.getName()+ ","+ tchr.getGender()+"," + tchr.getAddress());
			int res=pre.executeUpdate();
			pre.close();
			return res;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			db.closeConnection(con);
		}
		return 0;
		}
	
	
	
	
	public boolean  LoginChecker(Student teacher)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="select * from teacher where email=? and password=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setString(1, teacher.getEmail());
			pre.setString(2, teacher.getPassword());
			ResultSet rs=pre.executeQuery();
			if(rs.next()){
				return true;
				
			}
			else
			{
				return false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}finally{
			db.closeConnection(con);
			}
			}


	public boolean  LoginCheckerAdmin(Student teacher)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="select * from admin where emailid=? and password=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setString(1, teacher.getEmail());
			pre.setString(2, teacher.getPassword());
			ResultSet rs=pre.executeQuery();
			if(rs.next()){
				return true;
				
			}
			else
			{
				return false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}finally{
			db.closeConnection(con);
			}
			}


}
