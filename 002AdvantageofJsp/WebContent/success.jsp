<%@page import="com.vidvaan.bean.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

	<%
	List<Employee>	employees=(List<Employee>) request
				.getAttribute("employees");
	%>
	<center>
		<h1>All Employees</h1>
		<hr>
		<hr>
		<table border="2px">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>GENDER</th>
				<th>SALARY</th>
				<th>DEPT</th>
			</tr>
			<%
				for (Employee employee : employees) {
			%>
			<tr>
				<td>
					<%
						out.println(employee.getId());
					%>
				</td>
				<td>
					<%
						out.println(employee.getName());
					%>
				</td>
				<td>
					<%
						out.println(employee.getGender());
					%>
				</td>
				<td>
					<%
						out.println(employee.getSalary());
					%>
				</td>
				<td>
					<%
						out.println(employee.getDepartment());
					%>
				</td>
				
			</tr>
			<%
				}
			%>
		</table>
		<hr>
		<hr>
		
		<hr>
		<hr>
	</center>

</body>
</html>