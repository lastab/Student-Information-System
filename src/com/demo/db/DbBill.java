package com.demo.db;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.demo.std.Bill;
import com.demo.std.Student;


public class DbBill {
	public int AddBillInfo(Bill bill)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="insert into bill values(?,?,?,?,?,?,?)";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, bill.getBill_id());
			pre.setInt(2, bill.getRoll());
			pre.setString(3, bill.getDeadline_date());
			pre.setString(4, bill.getTotal_amount());
			pre.setString(5, bill.getTotal_dues());
			pre.setString(6, bill.getDues_on_this_sem());
			pre.setString(7, bill.getAmount_paid_this_sem());
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
	public int UpdateBillInfo(Bill bill)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try
		{
			con=db.getConnection();
			String sql= "UPDATE bill SET Rollno = ?,Deadline_date=?,Total_amount=?,Total_dues=?,dues_on_this_sem=?,"
			+"amount_paid_this_sem=? where bill_id =?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, bill.getRoll());
			pre.setString(2, bill.getDeadline_date());
			pre.setString(3, bill.getTotal_amount());
			pre.setString(4, bill.getTotal_dues());
			pre.setString(5, bill.getDues_on_this_sem());
			pre.setString(6, bill.getAmount_paid_this_sem());
			pre.setInt(7, bill.getBill_id());
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

	public int DeleteBill(Bill bill)
	{
		Connection con=null;
		DbHelper db=new DbHelper();
		try
		{
			con=db.getConnection();
			String sql="Delete from bill where rollNo=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, bill.getRoll());
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
	
	
	public List<Bill> DisplayBill( int roll){
		List<Bill> billList=new ArrayList<Bill>();
		Connection con=null;
		DbHelper db=new DbHelper();
		try{
			con=db.getConnection();
			String sql="Select * from bill where rollno=?";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, roll);
					ResultSet rs=pre.executeQuery();
			while(rs.next()){
				Bill bill=new Bill();
				bill.setBill_id(rs.getInt("bill_id"));
                                bill.setRoll(rs.getInt("Rollno"));
				bill.setDeadline_date(rs.getString("Deadline_date"));			
				bill.setTotal_amount(rs.getString("Total_amount"));
                                bill.setTotal_dues(rs.getString("Total_dues"));
				bill.setDues_on_this_sem(rs.getString("Dues_on_this_sem"));
                                bill.setAmount_paid_this_sem(rs.getString("amount_paid_this_sem"));
				billList.add(bill);
			}
			rs.close();
			pre.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			db.closeConnection(con);
		}
		return billList;
		}
}