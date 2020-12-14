<%@page import="entity.TestDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <% 
      TestDetails topic = (TestDetails) (request.getAttribute("testDetailsObj")); 
      %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test Page | <% out.println(topic.getTopic()); %></title>
</head>
<body>

   
   <div style='padding-left:30%; padding-top:5%'>
       <h1>Test Page</h1>
          <h3>Test Name :  <% out.println(topic.getTopic()); %></h3>
          <h3>Total Time : <% out.println(topic.getTimeInMinute()); %> Minutes</h3>
          <h3>Total no. of questions : 10</h3>
          <%  out.println("<a href='StartTestServlet?testtablecode="+topic.getTopic()+"' style=' font-size:1.5rem'>Start</a>"); %>
         
         </div>
</body>
</html>   




<!-- 
  create table java1(
  id number not null primary key,
  question varchar(1000) not null,
  answer1 varchar(255),
   answer2 varchar(255),
    answer3 varchar(255),
     answer4 varchar(255),
     right_option varchar(2),
     comments varchar(1000)
     );
  

 -->