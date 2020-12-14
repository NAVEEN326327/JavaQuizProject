<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <link href="/your-path-to-fontawesome/css/fontawesome.css" rel="stylesheet">
  <link href="/your-path-to-fontawesome/css/brands.css" rel="stylesheet">
  <link href="/your-path-to-fontawesome/css/solid.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Home page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="home.css">
  <style>
     
@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

body {
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  background-color:#1F2739;
}

header a{
   font-size:1.5rem;
   font-weight: 600;
}


a:hover{
   color:white;
}

h1 {
  font-size:3em; 
  font-weight: 300;
  line-height:1em;
  text-align: center;
  color: #4DC3FA;
}

h2 {
  font-size:1em; 
  font-weight: 300;
  text-align: center;
  display: block;
  line-height:1em;
  padding-bottom: 2em;
  color: #FB667A;
}

h2 a {
  font-weight: 700;
  text-transform: uppercase;
  color: #FB667A;
  text-decoration: none;
}

.blue { color: #185875; }
.yellow { color: #FFF842; }

.container th h1 {
	  font-weight: bold;
	  font-size: 1em;
  text-align: left;
  color: #185875;
}

.container td {
	  font-weight: normal;
	  font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
	   -moz-box-shadow: 0 2px 2px -2px #0E1119;
	        box-shadow: 0 2px 2px -2px #0E1119;
}

.container {
	  text-align: left;
	  overflow: hidden;
	  width: 80%;
	  margin: 0 auto;
  display: table;
 
}

.container td, .container th {
	  padding-bottom: 2%;
	  padding-top: 2%;
  padding-left:2%;  
}

/* Background-color of the odd rows */
.container tr:nth-child(odd) {
	  background-color: #323C50;
}

/* Background-color of the even rows */
.container tr:nth-child(even) {
	  background-color: #2C3446;
}

.container th {
	  background-color: #1F2739;
}

.container td:first-child { color: #FB667A; }

.container tr:hover {
   background-color: #464A52;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
	   -moz-box-shadow: 0 6px 6px -6px #0E1119;
	        box-shadow: 0 6px 6px -6px #0E1119;
}



@media (max-width: 800px) {
.container td:nth-child(4),
.container th:nth-child(4) { display: none; }
}
  </style>
</head>
<body>
   
   <header class="container" style="margin-top:20px">
       <div class="row"> 
           
          <div class="col-md-2">
          <a href="IndexServlet">Home</a>
          </div>
          <div class='col-md-2'>
        		         <a href='aboutUs.jsp'>About Us</a>
        		          </div>
          
           <% 
           String isLoggedIn;
           if((String) request.getAttribute("isUserLogged") != null)
           {
        	   isLoggedIn = (String) request.getAttribute("isUserLogged");
           }
           else{
        	   isLoggedIn = "no";
           }
                
           if (!isLoggedIn.equals("yes") )
           {
        	   out.println(        			   
        			   "<div class='col-md-2'>"
        	          +"<a href='signup.jsp'>Registration</a>"
        	           +"</div>"
        	           +"<div class='col-md-2'>"
        	           + "<a href='login.jsp'> Login</a>"
        	           +"</div>"
        	           +"<div class='col-md-2'>"
        	           +"<a href='contact.jsp'>Contact Us</a>"
        	           +"</div>");
           }
           else
           {
        	   out.println("<div class='col-md-2'>"
        			     +"<a href='ResultServlet'>My Results</a>"
          	           +"</div>"
          	           +"<div class='col-md-2'>"
          	           + "<a href='accountDetails.jsp'> MyAccount</a>"
          	           +"</div>"
          	           +"<div class='col-md-2'>"
          	           +"<a href='LogoutServlet'>Logout</a>"
          	           +"</div>"
        			   );
           }
           
             %>
                    <div class="col-md-2">
             
                    ${sessionScope.name}
          </div>
          
         
       </div>
      
   </header>
   <div class="container" style="margin-top:50px">
     <div class="row">
        <div class="col-md-6">
        <h2>Active Test</h2>   
          <table class="container">
	<thead>
		<tr>
			<th><h1>Test Code</h1></th>
			<th><h1>Test Name</</h1></th>
			<th><h1>Status</h1></th>
			<th><h1>Link</h1></th>
		</tr>
		
	</thead>
	<tbody>
	<c:forEach items="${requestScope.activeTestList}" var="activeTestList">
                <tr><td>${activeTestList.getId()}</td>
                 <td>${activeTestList.getTestName()}</td>
                 <td>${activeTestList.getStatus()}</td>
                 <c:if test="${sessionScope.isLogin.equals(\"yes\")}">
                   <td><a href='TestServlet?id=${activeTestList.getId()}' style='text-decoration:none'>Start Test</a></td>
                 </c:if>
                 <c:if test="${!sessionScope.isLogin.equals(\"yes\")}">
                   <td><a href='login.jsp' style='text-decoration:none'>Start Test</a></td>
                 </c:if>
                  </tr>
              </c:forEach>
	</tbody>
  </table>
        </div>
      
        <div class="col-md-6"  >

        <h2>Top performers</h2>        
           
   <table class="container">
	<thead>
		<tr>
			<th><h1>Code</h1></th>
			<th><h1>First Name</</h1></th>
			<th><h1>Last name</h1></th>
			<th><h1>Country</h1></th>
		</tr>
	</thead>
	<tbody>
		 <c:forEach items="${requestScope.userList}" var="usr">
                <tr><td>${usr.getId()}</td>
                 <td>${usr.getFirst_name()}</td>
                 <td>${usr.getLast_name()}</td>
                 <td>${usr.getCountry()}</td>
               </tr>
              </c:forEach>

	</tbody>
  </table>
            
        </div>
     </div>
   </div>
</body>
</html>