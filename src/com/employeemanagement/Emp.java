package com.employeemanagement;

public class Emp {
	private int id;
	private String fname;
	private String lname;
	private String email;
	private String date;
	private int day;
	private int year;
	private String department;
	private int salary;
	private String experience;
	private String street1;
	private String street2;
	private String city;
	private String state;
	private String zipcode;
	private int phone;
	private String qualification;
	private String college;
	private String percentage;
	private String complitionyear;
	private String contact;
	private String status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getStreet1() {
		return street1;
	}
	public void setStreet1(String street1) {
		this.street1 = street1;
	}
	public String getStreet2() {
		return street2;
	}
	public void setStreet2(String street2) {
		this.street2 = street2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getPercentage() {
		return percentage;
	}
	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}
	public String getComplitionyear() {
		return complitionyear;
	}
	public void setComplitionyear(String complitionyear) {
		this.complitionyear = complitionyear;
	}

	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Emp [id=" + id + ", fname=" + fname + ", lname=" + lname
				+ ", email=" + email + ", date=" + date + ", day=" + day
				+ ", year=" + year + ", department=" + department + ", salary="
				+ salary + ", experience=" + experience + ", street1="
				+ street1 + ", street2=" + street2 + ", city=" + city
				+ ", state=" + state + ", zipcode=" + zipcode + ", phone="
				+ phone + ", qualification=" + qualification + ", college="
				+ college + ", percentage=" + percentage + ", complitionyear="
				+ complitionyear + ", contact=" + contact + ", status="
				+ status + "]";
	}
}
