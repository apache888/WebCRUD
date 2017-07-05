<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page errorPage="/error.jsp" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />

    <title>Developers Page</title>
</head>
<body>

<br />
<h3><a href="<c:url value="/pages/mainpage.jsp"/>" target="_self">Main page</a> </h3>
<br />
<br />

<h1>Developers List</h1>
<br />
<br />


<c:if test="${!empty listDevelopers}">
    <table border="1">
        <tr>
            <th width="60">ID</th>
            <th width="120">First name</th>
            <th width="120">Last name</th>
            <th width="120">Specialty</th>
            <th width="60">Experience</th>
            <th width="60">Salary</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listDevelopers}" var="developer">
            <tr>
                <td>${developer.id}</td>
                <td><a href="<c:url value="/DeveloperData?id=${developer.id}"/>" target="_self">${developer.firstName}</a></td>
                <td>${developer.lastName}</td>
                <td>${developer.specialty}</td>
                <td>${developer.experience}</td>
                <td>${developer.salary}</td>
                <td><a href="<c:url value='/UpdateDeveloper?id=${developer.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/DeleteDeveloper?id=${developer.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<br />
<br />
<hr/>

<h2>Add a Developer</h2>

<h2><a href="<c:url value="/pages/add_developer.jsp"/>" target="_self">Add new</a></h2>

</body>
</html>
