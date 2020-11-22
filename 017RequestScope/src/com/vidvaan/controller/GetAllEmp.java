package com.vidvaan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vidvaan.bean.Employee;
import com.vidvaan.service.EmployeeServiceImplimentation;

/**
 * Servlet implementation class GetAllEmp
 */
public class GetAllEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		EmployeeServiceImplimentation empService = new EmployeeServiceImplimentation();
		List<Employee> listofEmployees= empService.getAllEmployees();
		request.setAttribute("listofEmp", listofEmployees);
		RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
		rd.forward(request, response);
		
		
		
	}

	
}
