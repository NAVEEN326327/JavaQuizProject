package controllersServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsersDAO;

@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		
		String id1 = request.getParameter("id");
		int id = Integer.parseInt(id1);
		String oldPass = request.getParameter("currentPassword");
		String newPass = request.getParameter("newPassword");
		String newPassConfir = request.getParameter("newPassword1");
		RequestDispatcher accountPage =  request.getRequestDispatcher("accountDetails.jsp");
		
		boolean isPasswordChanged = false;
		UsersDAO dao = new UsersDAO();
		try {
			isPasswordChanged = dao.updatePassword(id,oldPass,newPass);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(isPasswordChanged)
		{
			request.setAttribute("isPasswordChanged", "Password successfully changed!");
			
		}
		else
		{
			request.setAttribute("isPasswordChanged", "Old password is wrong!");
			
		}
		
		accountPage.forward(request, response);
		
		
	}



}
