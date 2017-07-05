<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
  <title>DeveloperData</title>
</head>
<body>
<br />
<h3><a href="<c:url value="/pages/mainpage.jsp"/>" target="_self">Main page</a> </h3>
<br />
<br />
<h1>Developer Details</h1>

<table border="1">
  <tr>
    <th width="60">ID</th>
    <th width="120">First name</th>
    <th width="120">Last name</th>
    <th width="120">Specialty</th>
    <th width="60">Experience</th>
    <th width="60">Salary</th>
  </tr>
  <tr>
    <td>${developer.id}</td>
    <td>${developer.firstName}</td>
    <td>${developer.lastName}</td>
    <td>${developer.specialty}</td>
    <td>${developer.experience}</td>
    <td>${developer.salary}</td>
  </tr>
</table>
<br />
<br />
<h3><a href="<c:url value="/GetAllDevelopers"/>" target="_self">Developers List</a> </h3>

</body>
</html>