<%@ page import="com.training.model.Developer" %>
<%@ page import="java.util.List" %>
<%@ page import="com.training.dao.DeveloperDaoImpl" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Developers Page</title>
</head>
<body>
<br />

<h1>Developers List</h1>

<%
    List<Developer> list = new DeveloperDaoImpl().getAll();
    request.setAttribute("listDevelopers",list);
%>
<%--<% List<Developer> listDevelopers = (List<Developer>) application.getAttribute("listDevelopers");
%>--%>
<c:if test="${!empty listDevelopers}">
    <table class="tg" >
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
                <td><a href="${pageContext.servletContext.contextPath}/pages/developerdata.jsp?id=${developer.id}" target="_self">${developer.lastName}</a></td>
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

<h2><a href="add_developer.jsp" target="_self">Add new</a></h2>

</body>
</html>
