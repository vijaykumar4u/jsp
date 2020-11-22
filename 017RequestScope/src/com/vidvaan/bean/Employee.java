package com.vidvaan.bean;

public class Employee {
	private int eId;
	private String eName;
	private String gender;
	private double eSalary;
	private String department;
	

	public Employee(int eId, String eName, String gender, double eSalary, String department) {
		
		this.eId = eId;
		this.eName = eName;
		this.gender = gender;
		this.eSalary = eSalary;
		this.department = department;
	}


	public Employee() {
		// TODO Auto-generated constructor stub
	}


	public int geteId() {
		return eId;
	}


	public void seteId(int eId) {
		this.eId = eId;
	}


	public String geteName() {
		return eName;
	}


	public void seteName(String eName) {
		this.eName = eName;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public double geteSalary() {
		return eSalary;
	}


	public void seteSalary(double eSalary) {
		this.eSalary = eSalary;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	@Override
	public String toString() {
		return "Employee [eId=" + eId + ", eName=" + eName + ", gender=" + gender + ", eSalary=" + eSalary
				+ ", department=" + department + "]";
	}
	

}
