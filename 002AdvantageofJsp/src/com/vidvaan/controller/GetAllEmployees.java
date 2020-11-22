package com.vidvaan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vidvaan.bean.Employee;
import com.vidvaan.service.EmployServiceDeclaration;
import com.vidvaan.service.EmployeeServiceImplimentaion;


public class GetAllEmployees extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
  		
  		//response.setContentType("text/html");
  		//PrintWriter out = response.getWriter();
  		EmployServiceDeclaration empService = new EmployeeServiceImplimentaion();
  		List<Employee> allEmployees=empService.getAllEmployee();
  		RequestDispatcher requestDispatcher = request.getRequestDispatcher("success.jsp");
  		request.setAttribute("employees", allEmployees);
  		requestDispatcher.forward(request, response);
  		
	}

	

}
