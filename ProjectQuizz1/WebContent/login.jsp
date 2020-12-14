<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
 <link rel="stylesheet" href="login.css">
 <style>  
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: lightGray;  
}  
.outer__container{
	margin-top:2%;
	display:flex;
	flex-direction:row;
	justify-content:space-evenly;
}
.container {  
    padding: 50px;  
  background-color: skyblue;  
}  
  
input[type=text], input[type=password], textarea {  
  width: 90%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
span{
  color: red;
}
.button{  
 border-style:none;
   padding:10px;
}

</style>  
</head>


<body>  
<a style='padding-left:10%; font-size:1.4rem' href='IndexServlet'>Home</a>
<div class='outer__container' >
  <form action='LoginServlet'>  
     <div class="container">  
 
       <h1 style='color:white'>Login</h1>
        <label> UserName<span>*</span></label>   
        <input type="text" name="username" id="username" placeholder= "Firstname" size="15" required />
        <label> Password<span>*</span></label>    
        <input type="password" name="password" id="password" placeholder="Lastname" size="15" required />  
        <input class="button" type="submit" value="Login" onclick="validate()" >
        <br>
        <label>Don't have an account?<span>*</span></label>
        <a href="signup.jsp">SignUp</a> 
     </div>


    </form>  
</div>
</body> 
</html>



