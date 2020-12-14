package controllersServlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import dao.TestDAO;
import dao.UsersDAO;
import entity.Test;
import entity.TestDetails;
import entity.Users;

@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
//	String isUserLoggedIn = "no";
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		java.io.PrintWriter pw = response.getWriter();
        List<Users> userList = null; 
        List<Test> activeTestList = null;
		
		
        // All user list
		UsersDAO userDao = new UsersDAO();
		try {
			userList = userDao.getUsers();
		} catch (ClassNotFoundException | SQLException e) {
	
			e.printStackTrace();
		}
		
		
		// Active Test list
        TestDAO test = new TestDAO();

        try {
        	activeTestList = test.allActiveTest();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
// 
      
        request.setAttribute("activeTestList", activeTestList);
        
		
		// User Loggin session
		HttpSession session=request.getSession(false);  
        if(session!=null){  
//        String username =(String)session.getAttribute("name");  
        	 String isUserLogged =(String)session.getAttribute("isLogin");  
             request.setAttribute("isUserLogged", isUserLogged);
        }  
        

        
		//// Top users (students) 
		request.setAttribute("userList", userList);
		RequestDispatcher homePage = request.getRequestDispatcher("home.jsp");
		homePage.forward(request, response);
		
//		HttpSession session = request.getSession(false);
//		String name = (String) session.getAttribute("name");
		
//		pw.println("<h1>Welcome </h1> "+name);
		
//		Cookie ck[]=request.getCookies();
//		for(Cookie cookie: ck) {
//			if(cookie.getName().equals("myname"))
//			    pw.println(cookie.getValue());
//		}
	}

}


