<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21-Sep-19
  Time: 12:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="departmentService" class="com.sda.service.DepartmentService"></jsp:useBean>
<jsp:useBean id="userService" class="com.sda.service.UserService"></jsp:useBean>
<html>
<head>
    <title>Departments</title>
</head>
<body>
<h1>Departments page!</h1>
<%--<c:forEach items="${employeeService.findById(1)}" var="employee">--%>
<%--<span><c:out value="${employee.getName()}"/></span>--%>
<%--</c:forEach>--%>
<%--<c:forEach items="${userService.findById(1)}" var="user">--%>
<%--<span><c:out value="${employee.getUsername()}"/></span>--%>
<%--</c:forEach>--%>

<table border="1" cellpadding="5">
    <tr>
        <th>Nr.crt</th>
        <th>Name</th>

    </tr>
    <c:forEach items="${departmentService.getDepartments()}" var="dep" varStatus="loop">
        <tr>
            <td>${loop.count}</td>
            <td><c:out value="${dep.getName()}" />
        </tr>
    </c:forEach>
</table>
<a href="add_department.jsp">Add Department</a>

</body>
</html>
