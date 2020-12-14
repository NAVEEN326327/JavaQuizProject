package controllersServlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitParameter
 */
@WebServlet("/InitParameter")
public class InitParameter extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		java.io.PrintWriter pw = response.getWriter();
		
	    ServletContext context = getServletContext();
	    Integer count = (Integer) context.getAttribute("cnt");
	    count = count+10;
       
	    pw.println("from InitParameterServlet count" + count);
	    context.setAttribute("cnt", count);
	
	}


}
