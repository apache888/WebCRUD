<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error Page</title>
</head>
<body>
Sorry following exception occured:<%= exception %>
<br/>
<br/>
status_code: <%= request.getAttribute("javax.servlet.error.status_code")%> <br/>
message: <%= request.getAttribute("javax.servlet.error.message")%> <br/>
exception_type: <%= request.getAttribute("javax.servlet.error.exception_type")%> <br/>
servlet_name: <%= request.getAttribute("javax.servlet.error.servlet_name")%> <br/>
exception: <%= request.getAttribute("javax.servlet.error.exception")%> <br/>
<br/>
<br/>
<br/>
<h3><a href="<c:url value="/pages/mainpage.jsp"/>" target="_self">Main page</a> </h3>
</body>
</html>
