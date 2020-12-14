package contextpack;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServletContextTest
 */
@WebServlet("/MyServletContextTest")
public class MyServletContextTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer count = 1000;
		ServletContext context = getServletContext();
		context.setAttribute("cnt", count);
		RequestDispatcher rd = request.getRequestDispatcher("InitParameter");
	    rd.forward(request, response);
	}

	

}
