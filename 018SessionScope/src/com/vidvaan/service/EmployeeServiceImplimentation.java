package com.vidvaan.service;

import java.util.ArrayList;
import java.util.List;

import com.vidvaan.bean.Employee;

public class EmployeeServiceImplimentation implements EmployeeService {

	public EmployeeServiceImplimentation() {
		// TODO Auto-generated constructor stub
	}

	public List<Employee> getAllEmployees() {
		
		List<Employee> employeesList = new ArrayList<Employee>();
		employeesList.add(new Employee(1, "Vijay", "Male", 65000, "It"));
		employeesList.add(new Employee(2, "Ganesh", "Male", 75000, "Carpanter"));
		employeesList.add(new Employee(3, "Vivek", "Male", 3500, "Accounts"));
		employeesList.add(new Employee(4, "Ravi", "Male", 60000, "Painter"));
		return employeesList;
	}

}
