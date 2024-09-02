package controllers;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.annotation.WebServlet;

import java.io.*;

import models.Item;

@WebServlet("/item_description.do")
public class ItemDescriptionServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
        String name=request.getParameter("item_name");
        String description=Item.getDescription(name);

        response.getWriter().write(description);
    }
}
