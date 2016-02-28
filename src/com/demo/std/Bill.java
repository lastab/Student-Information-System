package com.demo.std;

public class Bill {
private Integer bill_id;
private Integer roll;
private String deadline_date;
private String total_amount;
private String total_dues;
private String dues_on_this_sem;
private String amount_paid_this_sem;

public Integer getBill_id() {
	return bill_id;
}
public void setBill_id(Integer bill_id) {
	this.bill_id = bill_id;
}
public Integer getRoll() {
	return roll;
}
public void setRoll(Integer roll) {
	this.roll = roll;
}
public String getDeadline_date() {
	return deadline_date;
}
public void setDeadline_date(String deadline_date) {
	this.deadline_date = deadline_date;
}
public String getTotal_amount() {
	return total_amount;
}
public void setTotal_amount(String total_amount) {
	this.total_amount = total_amount;
}
public String getTotal_dues() {
	return total_dues;
}
public void setTotal_dues(String total_dues) {
	this.total_dues = total_dues;
}
public String getDues_on_this_sem() {
	return dues_on_this_sem;
}
public void setDues_on_this_sem(String dues_on_this_sem) {
	this.dues_on_this_sem = dues_on_this_sem;
}
public String getAmount_paid_this_sem() {
	return amount_paid_this_sem;
}
public void setAmount_paid_this_sem(String amount_paid_this_sem) {
	this.amount_paid_this_sem = amount_paid_this_sem;
} 
}
