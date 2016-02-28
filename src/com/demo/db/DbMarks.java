package com.demo.db;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.demo.std.Marks;


public class DbMarks {
public int AddMarks(Marks Mrk)
{
	Connection con=null;
	DbHelper db=new DbHelper();
	try
	{
		con=db.getConnection();
	String sql="insert into student_marks values(?,?,?,?,?,?)";
	PreparedStatement pre=con.prepareStatement(sql);
	pre.setInt(1, Mrk.getRollNo());
	pre.setInt(2, Mrk.getSujectId());
	pre.setFloat(3, Mrk.getAttendance());
	pre.setFloat(4, Mrk.getAssignment());
	pre.setFloat(5, Mrk.getTermMarks());
	//float gpa = (Mrk.getAssignment()/10+Mrk.getAttendance()/10+Mrk.getTermMarks()/80)*4;
	
	//Mrk.setGpa((int)gpa+"");
	pre.setString(6, Mrk.getGpa());
	System.out.print("your marks details's are in Process to add");
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
public int UpdateMarksInfo(Marks Mrk)
{
	Connection con=null;
			DbHelper db=new DbHelper();
			try
			{
				con=db.getConnection();
				String sql="update student_marks set attendance=?,assignment=?,term_marks=?,gpa=? where Rollno=? and subject_id=?";
				PreparedStatement pre=con.prepareStatement(sql);
				
				pre.setFloat(1, Mrk.getAttendance());
				pre.setFloat(2, Mrk.getAssignment());
				pre.setFloat(3, Mrk.getTermMarks());
				pre.setString(4,Mrk.getGpa());
				pre.setInt(5, Mrk.getRollNo());
				pre.setInt(6, Mrk.getSujectId());
				
				System.out.print("your data are updating......Loading......");
				int res=pre.executeUpdate();
				return res;
			}
			catch(Exception e){
				e.printStackTrace();
				return 0;
				
			}
}
public List<Marks> getAllMarks(){
	List<Marks> stdList=new ArrayList<Marks>();
	Connection con=null;
	DbHelper db=new DbHelper();
	try{
		con=db.getConnection();
		String sql="Select * from student_marks";
		PreparedStatement pre=con.prepareStatement(sql);
				ResultSet rs=pre.executeQuery();
		while(rs.next()){
			Marks mrk=new Marks();
			mrk.setRollNo(rs.getInt("Rollno"));
			mrk.setAssignment(rs.getFloat("assignment"));
			mrk.setAttendance(rs.getFloat("attendance"));
			mrk.setTermMarks(rs.getFloat("term_marks"));
			stdList.add(mrk);
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
public List<Marks> getStudentMark( int studentRoll){
	List<Marks> stdList=new ArrayList<Marks>();
	Connection con=null;
	DbHelper db=new DbHelper();
	try{
		con=db.getConnection();
		String sql="select * from subject_marks_details where Rollno=?";
		
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, studentRoll);
				ResultSet rs=pre.executeQuery();
		while(rs.next()){
			Marks mrk=new Marks();
			mrk.setRollNo(rs.getInt("rollno"));
			mrk.setSujectId(rs.getInt("subject_id"));			
			mrk.setSubject_Name(rs.getString("subject_name"));		
			mrk.setAssignment(rs.getFloat("assignment"));
			mrk.setAttendance(rs.getFloat("attendance"));
			mrk.setTermMarks(rs.getFloat("term_marks"));
			stdList.add(mrk);
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

public List<Marks> getASubjectMark(int subjectId){
	List<Marks> stdList=new ArrayList<Marks>();
	Connection con=null;
	DbHelper db=new DbHelper();
	try{
		con=db.getConnection();
		String sql="Select student.Rollno, student.Name,student_marks.attendance,student_marks.assignment,"
				+ "student_marks.term_marks,student_marks.gpa from student Right JOIN student_marks on student.Rollno=student_marks.RollNo where subject_id=?";
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, subjectId);
				ResultSet rs=pre.executeQuery();
		while(rs.next()){
			Marks mrk=new Marks();
			mrk.setStudent_Name(rs.getString("Name"));
			mrk.setRollNo(rs.getInt("Rollno"));
			mrk.setAssignment(rs.getFloat("assignment"));
			mrk.setAttendance(rs.getFloat("attendance"));
			mrk.setTermMarks(rs.getFloat("term_marks"));
			stdList.add(mrk);
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

}

