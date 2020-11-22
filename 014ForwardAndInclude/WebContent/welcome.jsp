<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String user = request.getParameter("user"); 
String pass = request.getParameter("pass");
if(user.equals("vijay") && pass.equals("vijay123")){
	



%>
<jsp:forward page="success.jsp">
<jsp:param value="<%=user %>" name="user"/>
</jsp:forward>

<%}else{ %>


<span style="color: red">
<jsp:include page="index.jsp"></jsp:include>

</span>

<%} %>
</body>
</html>