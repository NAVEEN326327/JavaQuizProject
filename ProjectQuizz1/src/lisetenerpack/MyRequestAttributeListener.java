package lisetenerpack;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class MyRequestAttributeListener implements ServletRequestAttributeListener {


public void attributeRemoved(ServletRequestAttributeEvent arg0) {
System.out.println("attribute removed");
}

public void attributeAdded(ServletRequestAttributeEvent arg0) {
System.out.println("new attribute added");
}

public void attributeReplaced(ServletRequestAttributeEvent arg0) {
System.out.println("attribute replaced");
}
}