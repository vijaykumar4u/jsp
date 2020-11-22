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
List<Employee> employees=(List<Employee>)session.getAttribute("listofEmp");



%>
	<center>
		<h1>All Employees</h1>
		<hr>
		<hr>

		<table border="1px">
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
				<td><%=employee.geteId()%></td>
				<td><%=employee.geteName()%></td>
				<td><%=employee.getGender()%></td>
				<td><%=employee.geteSalary()%></td>
				<td><%=employee.getDepartment()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</center>
</body>
</html>