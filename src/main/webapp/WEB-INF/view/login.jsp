<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
</head>
<body>
<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">
    <c:if test="${param.error != null}">
        <p><i style="color: #ff0000">Invalid username/password!</i></p>
    </c:if>
    <c:if test="${param.logout != null}">
        <p><i style="color: red">You have been logged out!</i></p>
    </c:if>
    <p>Username: <input type="text" name="username"/></p>
    <p>Password: <input type="password" name="password"></p>
    <p><button type="submit" value="Submit">Submit</button></p>
</form:form>

</body>
</html>
