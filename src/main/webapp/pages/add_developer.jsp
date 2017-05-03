
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Developers Page</title>
</head>
<body>
        <h1>Add a Developer</h1>
        <br />

        <%--<form action="../AddDeveloper" method="POST">--%>
        <form action="${pageContext.servletContext.contextPath}/AddDeveloper" method="POST">

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
