<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test Score page!!</title>
<style>
  .outer__container{ 
     display:flex;
     justify-content:center;
  }
</style>
</head>
<body>
 <a style='padding-left:10%' href='IndexServlet'>Home</a>
<div class='outer__container'>
 <div>
   <h1>Test Submitted!</h1>
   <% int score = (Integer) request.getAttribute("score") ;
        String code = (String) request.getAttribute("testCode");
       
     %>
    
     Test Score : <%  out.println(score); %>/10
 </div>
</div>
     
</body>
</html>