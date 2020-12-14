<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <table border="2">
<tr><th>Id</th><th>First Name</th><th>last name</th><th>Email</th><th>Country</tr>
<c:forEach items="${requestScope.userList}" var="usr">
   <tr><td>${usr.getId()}</td>
       <td>${usr.getFirst_name()}</td>
       <td>${usr.getLast_name()}</td>
       <td>${usr.getEmail()}</td>
       <td>${usr.getCountry()}</td>

   </tr>
</c:forEach>
</table>
 
     <form action='bean.jsp'>
       <input type='text' id='firstName' name='firstName'>
       <input type='text' id='lastName' name='lastName'>
       <button type='submit'>Submit</button>
     </form>

</body>
</html>

