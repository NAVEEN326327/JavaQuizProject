<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
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
  background-color: lightblue;  
}  
  
input[type=text], input[type=password], textarea {  
  width: 100%;  
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
</style>  
</head>  
<body>  
<div class='outer__container' >
<form>  
  <div class="container">  
  <center>  
  <h3>contact me</h3>
  </center>  
  <hr>  
  <label> Firstname<span>*</span></label>   
<input type="text" name="firstname" placeholder= "Firstname" size="15" required />
<label> Lastname<span>*</span></label>    
<input type="text" name="lastname" placeholder="Lastname" size="15" required />  
 
<div>
<label>Date of birth</label>
<input id="dob" name="dob" type="date" class="form-control" />
</div>

<div>
<label>email<span>*</span></label>
<input type="text" name="email" placeholder= "Email" size="15" required/>
</div>

<div>
<label>   
Mobile<span>*</span>  
</label>  
<input type="text" name="country code" placeholder="Country Code"  value="+91" size="2"/>   
<input type="text" name="phone" placeholder="phone no." size="10"/ required> 
</div>
  
<div>
<label>reason</label>
<select class="form-control" id="reason-select" name="reason-select">
<option>Business</option>
<option>Collaboration</option>
<option>Job offer</option>
</select>
</div>
  
<div>  
<label>   
Gender<span>*</span> 
</label><br>  
<input type="radio" value="Male" name="gender" checked > Male   
<input type="radio" value="Female" name="gender"> Female   
<input type="radio" value="Other" name="gender"> Other  
</div>  

<div>
<label>Prefferred mode of communication</label>
<input type="checkbox" name="communication" value="contact-mobile" id="contact-mobile">
<label for="contact-mobile">Mobile</label>
<input type="checkbox" name="communication" value="contact-email" id="contact-email">
<label for="contact-email">Email</label>
</div>


<div>
<label>Message</label>
<textarea id="messagearea" name="messagearea" class="form-control" rows="4"></textarea>
</div>

<div>
<input id="form-submit" name="form-submit" type="submit" onclick="validation()" />
</div>
   
</form>  
</div>
</body>  
</html>  