package controllersServlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TestStartWithTestCodeDAO;
import entity.TestQuestions;

/**
 * Servlet implementation class StartTestServlet
 */
@WebServlet("/StartTestServlet")
public class StartTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.io.PrintWriter pw = response.getWriter();
		List<TestQuestions> testQuestioslist = null ;
		String testTableCode = request.getParameter("testtablecode");
		TestStartWithTestCodeDAO testQues = new TestStartWithTestCodeDAO();
		try {
			testQuestioslist = testQues.getTestQuestions(testTableCode);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(TestQuestions l : testQuestioslist)
		{
			System.out.println(l.getQuestions());
		}
		
		request.setAttribute("testQuestioslist", testQuestioslist);
		
		RequestDispatcher startTestServlet = request.getRequestDispatcher("startTestServlet.jsp");
		startTestServlet.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
