<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details | ${sessionScope.name}</title>
<style>

.first_container{
    display:flex;
    flex-direction:row;
    justify-content: center;
    align-item:center;
 }

    .container div{
       
       background-color:lightgray;
       padding: 10px;
       margin: 5px;
    }
    span{
     font-weight: 600;
    
    }
</style>
<script>

   function showChangePasswordForm(){
	   
	   document.getElementById('password_change_form').style.display = '';
   }
   
   function validatePass(){
	   var oldPass = document.getElementById('currentPassword').value;
	   var newPass = document.getElementById('newPassword').value;
	   var newPass1 = document.getElementById('newPassword1').value;
	   if(newPass==newPass1 && (oldPass !='' || newPass != '' || newPass1 != ''))
		   {
		   return true;
		   
		   }
	 
	   
	   else{
		   document.getElementById('passError').innerHTML = 'New password and confirm password must be same and please Enter all details !'
		   return false;
	   }
	   
	   
	   
   }
   
   
</script>
</head>
<body>
 <a style='padding-left:10%' href='IndexServlet'>Home</a>
       <div class='first_container'>
          <h1>Account Details</h1>
       </div>
        
         <div style='padding-left:20%; padding-right:20%; padding-top:5%' class='container'>
            <div><span>Username :</span> ${sessionScope.name}</div>
            <div><span>Password :</span> ************* <button onclick='showChangePasswordForm()'>Change Password</button><p style='color:green'>${requestScope.isPasswordChanged }</p>
                 <form style='display:none' method='post' action='ChangePassword' id='password_change_form'>
                  *Enter Current Password : <input type='password' placeholder='old password' name='currentPassword' id='currentPassword'><br>
                  *Enter New Password : <input type='password' placeholder='new password' name='newPassword' id='newPassword'><br>
                  *Confirm New Password : <input type='password' placeholder='confirm password' name='newPassword1' id='newPassword1'>
                                          <input style='display:none' type='number' name='id' value='${sessionScope.currentUser.getId() }'>
                  <div style='color:red' id='passError'></div>
                  <button type='submit' onclick='return validatePass()'>Save Changes</button>
                 </form>
            </div>
            <div><span>Name :</span> ${sessionScope.currentUser.getFirst_name()} ${sessionScope.currentUser.getLast_name()} </div>
            <div><span>Email :</span> ${sessionScope.currentUser.getEmail()} </div>
            <div><span>Gender :</span> ${sessionScope.currentUser.getGender()}</div>
            <div><span>Date of join :</span> ${sessionScope.currentUser.getDob()}</div>
            <div><span>Country :</span> ${sessionScope.currentUser.getCountry()}</div>
            <div><span>State :</span> ${sessionScope.currentUser.getState()}</div>
         </div>
</body>
</html>







