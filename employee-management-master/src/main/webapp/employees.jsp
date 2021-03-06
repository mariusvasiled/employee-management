<%--
  Created by IntelliJ IDEA.
  User: NicolaeA
  Date: 16.02.2019
  Time: 02:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="employeeService" class="com.sda.service.EmployeeService"></jsp:useBean>
<jsp:useBean id="userService" class="com.sda.service.UserService"></jsp:useBean>

<html>
<head>
    <title>Employees</title>
</head>
<body>
<h1>Employees page!</h1>
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
        <th>Role</th>

    </tr>
    <c:forEach items="${employeeService.getEmployees()}" var="emp" varStatus="loop">
        <tr>
            <td>${loop.count}</td>
            <td><c:out value="${emp.getName()}" />
            <td><c:out value="${emp.getFunction()}" />
        </tr>
    </c:forEach>
</table>

<a href="add_employee.jsp">Add Employee</a>

</body>
</html>
