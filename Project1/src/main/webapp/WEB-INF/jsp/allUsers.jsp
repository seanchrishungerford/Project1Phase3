<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>

<h1>User page</h1>
<ul>
<c:forEach items="${employee}" var="user">
   <li>${user.id}</li>
   <li>${user.name}</li>
</c:forEach>
</ul>
</body>
</html>