
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>

<body>
    <p>Sorry! username or password error</p>

    <%--<jsp:include page="/index.jsp" />--%>
    <%--<%@ include file="/index.jsp" %>--%>

    <form action="../LoginController" method="post">
        Name:<input type="text" name="name">
        <br />
        Password:<input type="password" name="password">
        <br />
        <br />
        <input type="submit" value="login">
    </form>
</body>
</html>
