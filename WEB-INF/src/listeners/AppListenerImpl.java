package listeners;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import java.util.ArrayList;

import models.Membership;
import models.Status;


public class AppListenerImpl implements ServletContextListener{
    public void contextInitialized(ServletContextEvent ev){
        ServletContext context=ev.getServletContext();
        System.out.println("===================================");
        System.out.println("=========TENTWALE STARTING!========");        
        System.out.println("===================================");        
        
        System.out.println("---------------Membership------------------");
        ArrayList<Membership>memberships=Membership.collectMemberships();
        context.setAttribute("memberships", memberships);

        System.out.println("---------------Status------------------");
        ArrayList<Status>status=Status.collectStatus();
        context.setAttribute("status", status);

        System.out.println("===================================");
        System.out.println("=========TENTWALE STARTED!==========");
    }
    public void contextDestroyed(ServletContextEvent ev){

    }
}