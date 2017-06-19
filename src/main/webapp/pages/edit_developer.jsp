<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <title>DeveloperData</title>
</head>
<body>
     <h2>Developer editing</h2>

     <form action="<c:url value="/UpdateDeveloper"/>" method="POST" >
         ID: <input type="text" name="id" value="${developer.id}" readonly/>
         <br />
         First Name: <input type="text" name="firstName" value="${developer.firstName}"/>
         <br />
         Last Name: <input type="text" name="lastName" value="${developer.lastName}"/>
         <br />
         Specialty: <input type="text" name="specialty" value="${developer.specialty}"/>
         <br />
         Experience: <input type="text" name="experience" value="${developer.experience}"/>
         <br />
         Salary: <input type="text" name="salary" value="${developer.salary}"/>
         <br />
         <br />
         <input type="submit" value="Edit" />
     </form>
</body>
</html>
