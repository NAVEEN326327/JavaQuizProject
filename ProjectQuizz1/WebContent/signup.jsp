<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Page</title>

<style>  
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: lightGray;  
}  

.outer_container{ 
   display: flex;
   justify-content: center;
   margin-top:5%;
 }

  
input[type=text], input[type=password], textarea {  
  width: 50%;  
  padding: 10px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
 
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
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

.container_form{ 
    display: flex;
    flex-direction:column;
    background-color:skyblue;
}
.container_form div{
   display: flex;
   flex-direction:row;
   padding-left:5%;
   padding-right:5%;
  
  
}

.button{ 
   border-style:none;
   padding:10px;
   
 }


</style>  
<script>
  function passValid()
  { 
	  var p1 = document.getElementById('password1').value
	  var p2 = document.getElementById('password2').value
	  if(p1!=p2){
		  
		  document.getElementById('passErr').innerHTML = 'Password and confirm password should match';
	  }
	  else{
		  document.getElementById('passErr').innerHTML = '';
	  }
	  
	  
	 
  }
  
</script>
</head>
<body>
 <a style='padding-left:10%; font-size:1.4rem' href='IndexServlet'>Home</a>
   <div class="outer_container">

       <form action="SignUpServlet" method="post" class='container_form' >
        <div style='padding-top:2%'>
       </div>
            <div>
                <h1 style='color:white'>Sign Up</h1>
           </div>
         <div >
               <input type="text" placeholder='First name' name="first_name" id="first_name"><p style="color:red" id="usernameErr"></p> &nbsp;
               <input type="text" placeholder='Last name' name="last_name" id="last_name" required>
         </div>
         <div>
             <input type="text" placeholder='Email' name="email" id="email" required>&nbsp;
             <input type="text" placeholder='Gender' name="gender" id="gender" required>
         </div>
         <div>
               <input type="text" placeholder='DOB' name="dob" id="dob" required>&nbsp;
             <input type="text" placeholder='Username' name="username" id="username" required>
         </div>
          <div id='passErr' style='color:red' style='padding-top:-10px'></div>
         <div>
              <input type="password" placeholder='Password' name="password1" id="password1" required>&nbsp;
               <input type="password" placeholder='Confirm password' name="password2" id="password2" onblur='passValid()' required>
              
         </div>
        
         <div>
              <input type="text" placeholder='Date of join' name="dateOfJoin" id="dateOfJoin" required>&nbsp;
             <input type="text" name="country" placeholder='Country' id="country"><p style="color:red" id="pwdError"></p>&nbsp;
            <input type="text" name="state" placeholder='State' id="state"><p style="color:red" id="pwdError1"></p>
         </div>
         <div>
                 <button class="button" type="submit" >Sign Up</button>&nbsp;
                 <button class="button" type="reset">Reset</button>
                
         </div>
      <div>
                Have an account? <a href="login.jsp">Login</a>
      </div>
       <div style='padding-bottom:2%'>
       </div>
    
      
      </form>

   </div>
</body>
</html>

   <!--  
   id number primary key,
	first_name varchar(30) not null,
	last_name varchar(30),
	email varchar(30) not null unique,
	gender varchar(10),
	dob varchar(30),
	username varchar(100) not null unique,
	password1 varchar(100) not null,
	password2 varchar(100) not null,
	dateOfJoin varchar(100),
	country varchar(255),
	state varchar(255),
   -->

