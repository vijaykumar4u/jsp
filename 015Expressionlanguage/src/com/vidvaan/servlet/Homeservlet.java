package com.vidvaan.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vidvaan.model.Address;
import com.vidvaan.model.Employee;
import com.vidvaan.model.Person;


public class Homeservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Person person = new Employee();
		person.setName("Vijay");
		
		request.setAttribute("person", person);
		 Employee employee = new Employee();
		 Address add = new Address();
		 add.setAddress("india");
		 employee.setAddress(add);
		 employee.setId(1);
		 employee.setName("Ravi");
		 HttpSession session = request.getSession();
		 session.setAttribute("employee", employee);
		 response.addCookie(new Cookie("User.cookie", "TomCat User"));
		 getServletContext().setAttribute("User.cookie", "TomCat User");
		RequestDispatcher rd= getServletContext().getRequestDispatcher("/home.jsp");
		rd.forward(request, response);
		
		
		
	}

	
}
