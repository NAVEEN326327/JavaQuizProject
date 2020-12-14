package controllersServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.TestDAO;
import entity.Test;
import entity.TestDetails;


@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.io.PrintWriter pw = response.getWriter();
		TestDetails testDetails = null;
		TestDAO test_details = new TestDAO();
		String testId =request.getParameter("id");
		int testid = Integer.parseInt(testId);
        System.out.println("Test id = "+ testid);
        try {
        	testDetails = test_details.testDetails(testid);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
      
          	System.out.println(testDetails.getTopic());
        HttpSession session = request.getSession();
        session.setAttribute("testCode", testDetails.getTopic());
        request.setAttribute("testDetailsObj", testDetails);
       
		RequestDispatcher testPage = request.getRequestDispatcher("test.jsp");
		testPage.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
