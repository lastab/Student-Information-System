package com.demo.db;
//import java.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.demo.std.Student;
//import com.mysql.jdbc.PreparedStatement;

public class StudentDao {
	public int AddStudentInfo(Student std){
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="insert into student values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pre=con.prepareStatement(sql);

			pre.setInt(1, std.getRollNo());
			pre.setString(2, std.getFname()+" "+std.getMname()+" "+ std.getLname());
			pre.setString(3, std.getPassword());
			
			/*pre.setInt(6, std.getYear());
			pre.setString(7, std.getMonth());
			pre.setInt(8, std.getDay());*/
			pre.setString(4, std.getGender());
			pre.setString(5, std.getDay()+"-"+std.getMonth()+"-"+std.getYear());
			pre.setString(6, std.getAddress());
			//pre.setString(11, std.getTAddress());
			pre.setString(7, std.getPhone());
			pre.setString(8, std.getEmail());
			pre.setString(9, std.getLevel());
			pre.setString(10, std.getProgram());
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
	public int UpdateInfo(Student std)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try
		{
			con=db.getConnection();
			String sql = "UPDATE  student  SET "
					+ " Name  = ?, Password  = ?,"
					+ " Gender  = ?,Dob=?, Address  = ?,"
					+ " Phone  = ?, Email  = ?,"
					+ " Level  = ?,"
					+ " Program  = ? "
					+ "WHERE  student . Rollno  =?";
			PreparedStatement pre=con.prepareStatement(sql);
//			pre.setInt(1, std.getRollNo());
			/*pre.setString(2, std.getMname());
			pre.setString(3, std.getLevel());*/
			pre.setString(1, std.getName());
			pre.setString(2, std.getPassword());
			pre.setString(3, std.getGender());
			pre.setString(4, std.getDob());
			pre.setString(5, std.getAddress());
			pre.setString(6, std.getPhone());
			pre.setString(7, std.getEmail());
			pre.setString(8, std.getLevel());
			pre.setString(9,std.getProgram());
			pre.setInt(10, std.getRollNo());
			System.out.println("your data has been updated and the updated rollno is"+ std.getRollNo() +"the name is"+ std.getName());
			
	
			int res=pre.executeUpdate();
//			System.out.print(res+"");
			
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
	public int DeleteInfo(Student std)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="delete from student where RollNo=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, std.getRollNo());
			System.out.print("The Deleted Data is"+ std.getRollNo() +","+ std.getName()+ ","+ std.getGender()+"," + std.getAddress());
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
	public List<Student> getAllStudent(){
		List<Student> stdList=new ArrayList<Student>();
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="Select * from student";
			PreparedStatement pre=con.prepareStatement(sql);
					ResultSet rs=pre.executeQuery();
			while(rs.next()){
				Student std=new Student();
				std.setRollNo(rs.getInt("RollNO"));
				std.setName(rs.getString("name"));
				std.setGender(rs.getString("gender"));
				stdList.add(std);
			}
			rs.close();
			pre.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			db.closeConnection(con);
		}
		return stdList;
		}
	public Student getAStudent(int  std_roll)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		Student std=new Student();
		try
		{
	
			con=db.getConnection();
			String sql="select * from Student where Rollno=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, std_roll);
					ResultSet rs=pre.executeQuery();
			while(rs.next()){
			
				std.setRollNo(rs.getInt("RollNO"));
				std.setName(rs.getString("name"));
				std.seprateName();			
				std.setGender(rs.getString("gender"));
				std.setAddress(rs.getString("Address"));
				std.setDob(rs.getString("Dob"));
				std.seprateDate();
				std.setEmail(rs.getString("Email"));
				std.setPhone(rs.getString("Phone"));
				std.setPassword(rs.getString("Password"));
				std.setLevel(rs.getString("Level"));
				std.setProgram(rs.getString("Program"));
				System.out.print(std.getName()+","+ std.getAddress()+","+ std.getGender()+","+ std.getDob()+","+ std.getRollNo()+","+ std.getEmail()+","+ std.getPhone()
						+","+ std.getLevel()+","+ std.getProgram());
			}
		
		
			//std.setMname(mname);
			//std.setLname(lname);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}finally{
			db.closeConnection(con);
		}
		return std;	
	}
	
	
	
	
	public int  get_Roll(Student std)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="select * from student where email=? and password=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setString(1, std.getEmail());
			pre.setString(2, std.getPassword());
			ResultSet rs=pre.executeQuery();
			if(rs.next()){
				return rs.getInt("Rollno");
				
			}
			else
			{
				return 0;
			}
		}
		catch(Exception e){
			e.printStackTrace();
			return 0;
		}finally{
			db.closeConnection(con);
			}
			}
	}