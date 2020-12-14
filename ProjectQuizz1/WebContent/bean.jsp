<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- useBean tag is used to create the objet of the pojo class -->
  <jsp:useBean id='u' class='entity.Students'/>
  
  <!-- set the attribute. It uses the setter mt-->
  <jsp:setProperty property="firstName" name="u" value='<%=request.getParameter("firstName") %>'/>
  <jsp:setProperty property="lastName" name="u" value='<%=request.getParameter("lastName") %>'/>
  
  <!-- useBean tag is used to create the objet of the pojo class -->
  <label>First Name : </label>
  <h4>
     <jsp:getProperty property="firstName" name="u"/>
  </h4>
  <label>Last Name : </label>
  <h4>
     <jsp:getProperty property="lastName" name="u"/>
  </h4>
   
</body>
</html>