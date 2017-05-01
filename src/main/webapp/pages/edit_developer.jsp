
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DeveloperData</title>
</head>
<body>
     <h2>Developer editing</h2>

     <form action="../UpdateDeveloper" method="POST">
         ID: <%= request.getPart("id")%>
         First Name: <input type="text" name="firstName">
         <br />
         Last Name: <input type="text" name="lastName" />
         <br />
         Specialty: <input type="text" name="specialty" />
         <br />
         Experience: <input type="text" name="experience" />
         <br />
         Salary: <input type="text" name="salary" />
         <input type="submit" value="Create" />
     </form>
</body>
</html>
