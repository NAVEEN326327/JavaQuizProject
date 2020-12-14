
<html>
<head>
<title>
About Us
</title>

   <style type="text/css">
   body{
	margin : 0;
	padding : 0;
	font-family : Serif Georgia;
	background : url(bg.jpg)no-repeat;
	background-size : cover;
	background-position : center;
	
	
}
.container{
			height : auto;
			width : 30%;
			background : rgba(0,0,0,.6);
			position : absolute;
			top : 15%;
			left : 10%;
			transsform : translate(-50%,-50%);
			border-radius: 1%;
			
}
.container1{
			height : auto;
			width : 30%;
			background : rgba(255,255,255,.6);
			position : absolute;
			top : 15%;
			right : 10%;
			transsform : translate(-50%,-50%);
			border-radius: 1%;
			
}
.container h1{
			color : white;
			margin-top : 50px;
}
.container p{
			color : white;
			margin-top : 30px;
			font-size : large;
}


.btn{
			background : no-repeat;
			outline : none;
			border : 1px solid white;
			color : white;
			width : 50%;
			padding : 7px 15px;
			font-size : large;
			cursor : pointer;
			transition : o.3s ease;
			margin-top : 50px;
			border-radius: 5px;
}
.btn:hover{
			background : white;
			color : black;
}

.para{
   padding-left: 10px;
   padding-right: 10px;
}
span{
   font-weight:700;
   margin-top:-20px;
   background-color:yellow;
   height:50px;
}
   .profile{ 
   padding:10px;
      height: 300px;
      display:flex;
      flex-direction:column;
      justify-content: space-evenly;
   }
   </style>
</head>
<body>
<div style='padding-top:2%'>
 <a style='padding-left:10%; color:white; ' href='IndexServlet'>Home</a>
 </div>
	
	<div class= "container">
	<center>
			<h1>About Us</h1>
			
			<div class='para'>
			   <p> 
			   Online Quiz System Project is really an interesting platform for testing your knowledge. It will provide users an online interface where they solve different quizzes online. The other interface will be controlled by the operator who will responsible to create, design and update the quizzes. The users or students will enter their particulars to login and solve a quiz of their choice. It may contain MCQs or other format as designed by the admin or teacher.
			   </p>
			</div>
			
			<form action='contact.jsp'>
		     	<button class = "btn">Contact Us</button>
			</form>
			
	</center>		
	</div>
	<div class= "container1">
	<center>
			<h1>Team</h1>

	</center>	
	<div class='profile'>
	  <div><img src='https://www.flaticon.com/svg/static/icons/svg/1077/1077063.svg' width="30" height="30" style='color:white'> <span>Naveen Kumar Sharma (Backend Developer)</span></div>
	  <div><img src='https://www.flaticon.com/svg/static/icons/svg/1077/1077063.svg' width="30" height="30" style='color:white'> <span>Shrestha Gangwar (Front End Developer)</span></div>
	  <div><img src='https://www.flaticon.com/svg/static/icons/svg/1077/1077063.svg' width="30" height="30" style='color:white'> <span>Shubham Rathod  (Front End Developer)</span></div>
	  <div><img src='https://www.flaticon.com/svg/static/icons/svg/1077/1077063.svg' width="30" height="30" style='color:white'> <span>Nimmakauri Haveela (Front End Developer)</span></div>
	</div>	
	</div>
	
</body>
</html>