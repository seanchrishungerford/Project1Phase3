<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>ID</th>
			<th>NAME</th>
		</tr>
		<c:forEach items="${temp}" var="user">

			<tr>
				<td>${user.id}</td>
				<td>${user.name}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Employees</title>
</head>
<body>
	<h1 style="color: blue"></h1>

	<form:form action="find" method="post" modelAttribute="hello">
		<table>
			<tr>
				<td>ID</td>
				<td>${hello.id}<form:hidden path="id" name="id" />
				</td>
			</tr>
			<tr>
				<td>Name</td>
				<td>${hello.name}<form:hidden path="id" name="name" />
				</td>
			</tr>
			<tr>
				<td><a type="button" href="/editemp?id=${hello.id}">Update</a>
				</td>

			</tr>
		</table>

	</form:form>
</body>
</html>