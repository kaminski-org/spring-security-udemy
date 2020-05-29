<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<body>
<h2>Hello World!</h2>
    <p>User: <security:authentication property="principal.username"/></p>
    <p>Roles: <security:authentication property="principal.authorities"/></p>

    <security:authorize access="hasRole('ADMIN')">
        <p><a href="${pageContext.request.contextPath}/systems">For admins only</a></p>
    </security:authorize>

    <security:authorize access="hasRole('MANAGER')">
        <p><a href="${pageContext.request.contextPath}/leaders">For manager only</a></p>
    </security:authorize>

    <security:authorize access="hasRole('EMPLOYEE')">
        <p><a href="${pageContext.request.contextPath}/employees">For employees only</a></p>
    </security:authorize>

    <form:form action="${pageContext.request.contextPath}/logout" method="post">
        <input type="submit" value="Logout">
    </form:form>

</body>
</html>
