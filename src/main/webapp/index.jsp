<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<h1>CRUD Manager</h1>
<br />
<form action="LoginController" method="post">
    Name:<input type="text" name="name">
    <br />
    Password:<input type="password" name="password">
    <br />
    <br />
    <input type="submit" value="login">
</form>
</body>
</html>
