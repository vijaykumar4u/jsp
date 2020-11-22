<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:set var="income" scope="session" value="${4000*5 }"></c:set>
	<p>Before Removing:</p>
	<c:out value="${income}"></c:out>
	<p>After Removing:</p>
	<c:remove var="income" />
	<c:out value="${income}"></c:out>

	<c:catch var="catchException">

		<%
			int x = 2 / 0;
		%>

	</c:catch>
	<c:if test="${catchException!=null }">

		<p>
			The type exception is: ${catchException}<br /> there is an
			Exception:${catchException.message}
		</p>


	</c:if>
	<c:set var="income" scope="session" value="${4000*4}"></c:set>
	<c:if test="${income >10000}">


		<p>
			My Income is :
			<c:out value="${income}"></c:out>
		</p>


	</c:if>
	<c:set var="inco" scope="session" value="${4000*4}"></c:set>
	<c:choose>
		<c:when test="${inco <=1000}">Income is not Good

</c:when>
		<c:when test="${inco >=10000}">Income is very Good

</c:when>
		<c:otherwise>
Income is Un determined

</c:otherwise>
	</c:choose><br>
<c:forEach var="j" begin="1" end="4">

Items:<c:out value="${j}"></c:out><br>

</c:forEach><br>
<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">  
   <c:out value="${name}"/><p>  
</c:forTokens>  <br>
<c:url value="index.jsp" var="completeUrl">
<c:param name="TrackingId" value="786"></c:param>
<c:param name="user" value="Vijay"></c:param>
<c:param name=""></c:param>

</c:url>
${completeUrl}
<c:redirect url="http://www.google.com"></c:redirect>


</body>
</html>