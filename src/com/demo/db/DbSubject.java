package com.demo.db;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.demo.std.Subject;

public class DbSubject {
	public int AddSubjectInfo(Subject sub)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="insert into subject values(?,?,?)";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, sub.getSubjectId());
			pre.setString(2, sub.getSubjectName());
			pre.setString(3, sub.getCreditHour());
			System.out.print("your Subject details's are in Process to add");
			int res=pre.executeUpdate();
			return res;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return 0;
		}
		finally{
			db.closeConnection(con);
		}
	}
	public int UpdateSubjectInfo(Subject sub)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try
		{
			con=db.getConnection();
			String sql= "UPDATE subject SET subject_name = ?,subject_credit_hour = ? WHERE subject_id =?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setString(1, sub.getSubjectName());
			pre.setString(2, sub.getCreditHour());
			pre.setInt(3, sub.getSubjectId());
			System.out.print("your data are updating......Loading......");
			System.out.println("UPDATE subject SET subject_name = "+ sub.getSubjectName()+",subject_credit_hour = "+sub.getCreditHour()+" WHERE subject_id ="+sub.getSubjectId()+"");
			int res=pre.executeUpdate();
			return res;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return 0;
		}
		finally
		{
			db.closeConnection(con);

		}
	}

	public List<Subject> ShowSubjectView(){
		List<Subject> subList=new ArrayList<Subject>();
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="Select * from subject";			
			PreparedStatement pre=con.prepareStatement(sql);
			ResultSet rs=pre.executeQuery();
			while(rs.next()){
				Subject sub=new Subject();
				sub.setSubjectId(rs.getInt("Subject_Id"));
				sub.setSubjectName(rs.getString("Subject_Name"));
				sub.setCreditHour(rs.getString("subject_credit_hour"));
				subList.add(sub);
			}
			rs.close();
			pre.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			db.closeConnection(con);
		}
		return subList;
	}
	public int DeleteSubject(Subject sub)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try
		{
			con=db.getConnection();
			String sql="Delete from subject where Subject_id=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, sub.getSubjectId());
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
	public Subject GetASubject(int Subject_id){
		Connection con=null;
		DbHelper db=new DbHelper();
		Subject sub=new Subject();
		try{
			con=db.getConnection();
			String sql="Select * from subject where subject_id=?";			
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1,Subject_id);
			ResultSet rs=pre.executeQuery();
			while(rs.next()){
				sub.setSubjectId(rs.getInt("Subject_Id"));
				sub.setSubjectName(rs.getString("Subject_Name"));
				sub.setCreditHour(rs.getString("subject_credit_hour"));
			}
			rs.close();
			pre.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			db.closeConnection(con);
		}
		return sub;
	}
	}
