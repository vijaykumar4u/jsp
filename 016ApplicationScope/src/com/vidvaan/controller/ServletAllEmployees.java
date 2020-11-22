package com.vidvaan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vidvaan.bean.Employee;
import com.vidvaan.service.EmployeeServiceImplimentation;

/**st
 * Servlet implementation class ServletAllEmployees
 */
public class ServletAllEmployees extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		EmployeeServiceImplimentation empService = new EmployeeServiceImplimentation();
		List<Employee> listofEmployees= empService.getAllEmployees();
		ServletContext context = getServletContext();
		context.setAttribute("empList", listofEmployees);
		request.getRequestDispatcher("success.jsp").forward(request, response);
		
	}

	
}
