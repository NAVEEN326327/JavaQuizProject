package controllersServlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import java.util.TreeSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.TestStartWithTestCodeDAO;
import dao.UsersDAO;
import entity.TestQuestions;


@WebServlet("/SubmitTest")
public class SubmitTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.io.PrintWriter pw = response.getWriter();
		
		pw.println("Test Submitted!!");
		String ans1 = request.getParameter("ans1");
		String ans2 = request.getParameter("ans2");
		String ans3 = request.getParameter("ans3");
		String ans4 = request.getParameter("ans4");
		String ans5 = request.getParameter("ans5");
		String ans6 = request.getParameter("ans6");
		String ans7 = request.getParameter("ans7");
		String ans8 = request.getParameter("ans8");
		String ans9 = request.getParameter("ans9");
		String ans10 = request.getParameter("ans10");
	
		
		
		List<String> answers = new ArrayList<String>();
		answers.add(ans1);
		answers.add(ans2);
		answers.add(ans3);
		answers.add(ans4);
		answers.add(ans5);
		answers.add(ans6);
		answers.add(ans7);
		answers.add(ans8);
		answers.add(ans9);
		answers.add(ans10);
	   
		// Got testCode from session
		HttpSession session = request.getSession(false);
		String testCode = (String) session.getAttribute("testCode");
		pw.print(testCode);
		
		// Current userId
		int userId = (Integer) session.getAttribute("id");
		pw.println(userId);
		
		
		// TEST CORRECT OPTIONS
		List<TestQuestions> testQuestioslist = null ;
		
		TestStartWithTestCodeDAO testQues = new TestStartWithTestCodeDAO();
		try {
			testQuestioslist = testQues.getTestQuestions(testCode);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		// SCORE
		int score = 0;
		TreeMap<String,Integer> Score = new TreeMap<String,Integer>();
		for (int i = 0; i < testQuestioslist.size(); i++) {
		    
		    String correctOption = testQuestioslist.get(i).getRightOption();
		    String userOption = answers.get(i);
		    if(correctOption.equals(userOption) )
		    {
		    	score++;
		    }
		    
		   
		}
		
		
		UsersDAO dao = new UsersDAO();
		try {
			dao.postUserTestResult(testCode, score, userId);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("score", score);
		
		RequestDispatcher resultPage = request.getRequestDispatcher("scorePage.jsp");
		resultPage.forward(request, response);
//		for(TestQuestions l : testQuestioslist)
//		{
//			pw.println(l.getRightOption());
//		}
//		
//		
//		for(String s : answers)
//		{
//			pw.println(s);
//		}
	}



}
