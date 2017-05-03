
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DeveloperData</title>
</head>
<body>
     <h2>Developer editing</h2>

     <%--<form action="../UpdateDeveloper" method="POST">--%>
     <form action="${pageContext.servletContext.contextPath}/UpdateDeveloper" method="POST">
         ID: <input type="text" name="firstName" value="<%= request.getParameter("id")%>">
         <br />
         First Name: <input type="text" name="firstName"/>
         <br />
         Last Name: <input type="text" name="lastName" />
         <br />
         Specialty: <input type="text" name="specialty" />
         <br />
         Experience: <input type="text" name="experience" />
         <br />
         Salary: <input type="text" name="salary" />
         <br />
         <input type="submit" value="Create" />
     </form>
</body>
</html>
