package lisetenerpack;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class MyRequestListener implements ServletRequestListener {

    public void requestDestroyed(ServletRequestEvent arg0) {
          System.out.println("request object destroyed");
       }

     public void requestInitialized(ServletRequestEvent arg0) {
          System.out.println("request object initialized");
       }
}