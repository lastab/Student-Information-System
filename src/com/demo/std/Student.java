package com.demo.std;

//import java.util.Date;

public class Student {
	private int RollNo;
	public int getRollNo() {
		return RollNo;
	}
	public void setRollNo(int rollNo) {
		RollNo = rollNo;
	}
	private String Name;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	private String fname;
	private String mname;
	private String lname;
	private String password;
	private String year;
	private String month;
	private String day;
	private String gender;
	private String Dob;
	private String address;
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	private String phone;
	private String email;
	private String level;
	private String program;
	
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getDob() {
		return Dob;
	}
	public void setDob(String dob) {
		Dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	/*public String getPAddress() {
		return PAddress;
	}
	public void setPAddress(String paddress) {
		PAddress = paddress;
	}
	public String getTAddress() {
		return TAddress;
	}
	public void setTAddress(String tAddress) {
		TAddress = tAddress;
	}*/
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getProgram() {
		return program;
	}
	public void setProgram(String program) {
		this.program = program;
	}
	
	
	
	public void seprateDate(){
		String[] array=Dob.split("-");
		day=array[0];
		month=array[1];
		year=array[2];
	}
	public void seprateName(){
		String[] array=Name.split(" ");
		int num=array.length;
		fname=array[0];
		if (num!=2){
			mname=array[1];
			lname=array[2];
		}
		else
		{
			mname="";
			lname=array[1];			
		}
	}


}
