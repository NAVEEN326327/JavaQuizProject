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


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    java.io.PrintWriter pw = response.getWriter();

     // receive username and password from login.
     String user = request.getParameter("username");
     String pwd = request.getParameter("password");
     UsersDAO userdao = new UsersDAO();
     Users currentUser = new Users();

     RequestDispatcher loginPage = request.getRequestDispatcher("login.jsp");
    RequestDispatcher homePage = request.getRequestDispatcher("IndexServlet");

    // business logic
    LoginDao loginObj = new LoginDao();
    boolean isUser=false;
 
    try {
	 
	  isUser = loginObj.findUser(user, pwd);
	 
    } catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	   e.printStackTrace();
    } catch (SQLException e) {
	// TODO Auto-generated catch block
	  e.printStackTrace();
  }
  if(isUser)
   {
	 // Created session for login user
	  HttpSession session=request.getSession(false); 
	  if(session!=null){  
		  
		  // get current User details
		  try {
			currentUser = userdao.getUserDetails(user,pwd);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  session.setAttribute("currentUser", currentUser);
		  session.setAttribute("id", currentUser.getId());
      session.setAttribute("isLogin","yes");
      
	 session.setAttribute("name", user);
	  }
//	 session.setMaxInactiveInterval(40);
//	 Cookie cookie = new Cookie("myname", "Naveen");
	 homePage.forward(request, response);
    }
    else {
//    	  pw.print("Sorry, username or password error!");  
    	  loginPage.forward(request, response);  
//   	 loginPage.forward(request, response);
    }
 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	

}
