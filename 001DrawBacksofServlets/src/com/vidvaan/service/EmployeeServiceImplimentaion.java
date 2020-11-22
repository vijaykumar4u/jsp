package com.vidvaan.service;

import java.util.ArrayList;
import java.util.List;

import com.vidvaan.bean.Employee;

public class EmployeeServiceImplimentaion implements EmployServiceDeclaration{

	public List<Employee> getAllEmployee() {
		List<Employee> employees = new ArrayList<Employee>();
		employees.add(new Employee(101, "VijayKumar", "Male", 65000," It"));
		employees.add(new Employee(102, "ganesh", "Male", 75000," Carpenter"));
		employees.add(new Employee(103, "Vivek", "Male", 35000," Accounts"));
		employees.add(new Employee(104, "Ravi", "Male", 80000,"painter"));
		return employees;
		
		
	}

	
}
