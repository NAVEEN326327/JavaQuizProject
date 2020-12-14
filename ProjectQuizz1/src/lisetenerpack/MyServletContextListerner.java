package lisetenerpack;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class MyServletContextListerner
 *
 */
@WebListener
public class MyServletContextListerner implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public MyServletContextListerner() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         System.out.println("Context destroyed");
    }

	
    public void contextInitialized(ServletContextEvent arg0)  { 
    	System.out.println("Context created");
    }
	
}
