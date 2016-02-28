package com.demo.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.std.Student;
import com.demo.std.StudentSubject;

public class DbStudentSubject {
	public int AddStudentSubject(StudentSubject stdsub)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="insert into student_subject values(?,?,?,?)";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, stdsub.getStudent_year());
			pre.setInt(2, stdsub.getSubject_id());
			pre.setInt(3, stdsub.getTeacher_id());
			pre.setString(4, stdsub.getProgram());
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
	
	
	
	public List<StudentSubject> getStudentSubject(int year){
		List<StudentSubject> stdsubList=new ArrayList<StudentSubject>();
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="select student_subject.student_year, student_subject.subject_id,subject.subject_name, student_subject.Teacher_id,student_subject.Program from student_subject left JOIN subject on subject.subject_id=student_subject.subject_id  where student_year=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, year);
					ResultSet rs=pre.executeQuery();
					
			while(rs.next()){
				StudentSubject stdsub=new StudentSubject();
				stdsub.setSubject_id(rs.getInt("subject_id"));
				stdsub.setSubject_name(rs.getString("subject_name"));
				stdsubList.add(stdsub);
			}
			rs.close();
			pre.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			db.closeConnection(con);
		}
		return stdsubList;
		}
}
