<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Page</title>
<style>

.first_container{
    display:flex;
    flex-direction:row;
    justify-content: center;
    align-item:center;
    margin-top:5%;
 }

    .container div{
       
       background-color:lightgray;
       padding: 10px;
       margin: 5px;
    }
    span{
     font-weight: 600;
    
    }
    .row_container{
      background-color: lightgray;
    }
    th{
      background-color:gray;
      padding:10px;
    }
    
    td{ 
      padding:10px;
    }
    
    
</style>
</head>
<body>

 <a style='padding-left:10%' href='IndexServlet'>Home</a>
 <center><h1>Your Scores</h1></center>
<div class='first_container'>
 
      <table>
<tr><th>Id</th><th>Test Code</th><th>Score</th></tr>
<c:forEach items="${requestScope.scoreList}" var="result">
   <tr class='row_container'>
       <td >${result.getId()}</td>
       <td>${result.getTestCode()} </td>
       <td>${result.getScore()}/10</td>

   </tr>
</c:forEach>
</table>
</div>
</body>
</html>