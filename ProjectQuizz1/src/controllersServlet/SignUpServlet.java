package controllersServlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.*;
import entity.Users;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		java.io.PrintWriter pw = response.getWriter();
		// receive username and password from login.
	     String first_name = request.getParameter("first_name");
	     String last_name = request.getParameter("last_name");
	     String email = request.getParameter("email");
	     String gender = request.getParameter("gender");
	     String dob = request.getParameter("dob");
	     String username = request.getParameter("username");
	     String password1 = request.getParameter("password1");
	     String password2 = request.getParameter("password2");
	     String dateOfJoin = request.getParameter("dateOfJoin");
	     String country = request.getParameter("country");
	     String state = request.getParameter("state");
	     
	    int id = (int) (Math.random()*2000/Math.random() +Math.random()*100 *Math.random());
	    
         Users userObj = new Users( id,  first_name,  last_name,  email,  gender,  dob,
     			 username,  password1,  password2,  dateOfJoin,  country,  state
     			);
         
         
	     RequestDispatcher loginPage = request.getRequestDispatcher("login.jsp");
	     
//	    RequestDispatcher successPage = request.getRequestDispatcher("test");

	    // business logic
	     SignUp signUpObj = new SignUp();
	     
	     boolean isUserAdded=false;

	     try {
			isUserAdded = signUpObj.addNewUser(userObj);
	     } catch (ClassNotFoundException e) {
	    		// TODO Auto-generated catch block
	    		   e.printStackTrace();
	    	    } catch (SQLException e) {
	    		// TODO Auto-generated catch block
	    		  e.printStackTrace();
	    	  }
	    	  if(isUserAdded)
	    	   {
	    		 // Created session for login user
	    		 HttpSession session = request.getSession();

//	    		 session.setMaxInactiveInterval(40);
//	    		 Cookie cookie = new Cookie("myname", "Naveen");
	    		  loginPage.forward(request, response);
	    	    }
	    	    else {
	    	   	 System.out.println("NOt added!");
	    	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}


//
//id number primary key,
//first_name varchar(30) not null,
//last_name varchar(30),
//email varchar(30) not null unique,
//gender varchar(10),
//dob varchar(30),
//username varchar(100) not null unique,
//password1 varchar(100) not null,
//password2 varchar(100) not null,
//dateOfJoin varchar(100),
//country varchar(255),
//state varchar(255),