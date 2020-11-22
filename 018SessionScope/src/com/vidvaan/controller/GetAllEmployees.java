package com.vidvaan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vidvaan.bean.Employee;
import com.vidvaan.service.EmployeeServiceImplimentation;

/**
 * Servlet implementation class GetAllEmployees
 */
public class GetAllEmployees extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		EmployeeServiceImplimentation empService = new EmployeeServiceImplimentation();
		List<Employee> listofEmployees= empService.getAllEmployees();
		HttpSession session = request.getSession();
		session.setAttribute ("listofEmp", listofEmployees);
		response.sendRedirect("success.jsp");
		
		
	}

	
}
