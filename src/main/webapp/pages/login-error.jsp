<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <title>Login Page</title>
</head>

<body>
    <p>Sorry! username or password error</p>
    <br />
    <br />
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
