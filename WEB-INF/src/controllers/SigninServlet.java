package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.*;

import models.User;

public class SigninServlet extends HttpServlet {

    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
        request.getRequestDispatcher("signin.jsp").forward(request,response);
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response){
        String email=request.getParameter("email");
        String password=request.getParameter("password");

        boolean flag=User.signinUser(email,password);
    }
}
