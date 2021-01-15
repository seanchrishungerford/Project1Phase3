<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
    <h1>Search for user by id: </h1>
        
    <form:form modelAttribute="form" action="searchUsers">
        <form:errors path="" element="div" />
        <div>
            <form:label path="id">User ID: </form:label>
            <form:input path="id" />
            <form:errors path="id" />
        </div>
        <div>
            <a href="/getData?${form.id}">Submit</a>
        </div>
    </form:form>
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
<title></title>
</head>
<body>
<h1 style="color: blue">Find Employee by ID</h1>
<form:form modelAttribute="fn">
<form:input path="id"/>
<input type = "submit" value = "Submit">
</form:form>

</body>
</html>