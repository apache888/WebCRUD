<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <title>DeveloperData</title>

</head>
<body>
<h1>Developer Details</h1>

<table class="tg">
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
</body>
</html>