<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <title>Developers Page</title>
</head>
<body>
        <h1>Add a Developer</h1>
        <br />
        <br />

        <form action="<c:url value="/AddDeveloper"/>" method="POST">

            First Name: <input type="text" name="firstName">
            <br />
            Last Name: <input type="text" name="lastName" />
            <br />
            Specialty: <input type="text" name="specialty" />
            <br />
            Experience: <input type="text" name="experience" />
            <br />
            Salary: <input type="text" name="salary" />
            <br />
            <br />
            <input type="submit" value="Create" />
        </form>

</body>
</html>
