package controllers;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Invoice;

import javax.servlet.annotation.WebServlet;

import java.io.*;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet("/checkout_next.do")
public class CheckoutNextServlet extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
       Integer invoiceId=Integer.parseInt(request.getParameter("invoice_id"));
       String deliveryEmail=request.getParameter("email");
       String deliveryAddress=request.getParameter("street-address")+","+request.getParameter("postal-code")+","+request.getParameter("city")+","+request.getParameter("region");
       String phone=request.getParameter("phone");

       String fromDate=request.getParameter("start");
       
       String toDate=request.getParameter("end");

       Integer fd=Integer.parseInt(fromDate.substring(3, 5));
       Integer td=Integer.parseInt(toDate.substring(3, 5));
       
       Integer days=Math.abs(td-fd);

       Date fromDay=null;
       Date toDay=null;


      SimpleDateFormat df=new SimpleDateFormat("MM/dd/yyyy");
      try{
          toDay=df.parse(toDate);
          fromDay=df.parse(fromDate);

      }catch(ParseException e){
        e.printStackTrace();
      }

      Boolean flag=Invoice.addCheckoutData(invoiceId,fromDay,toDay,days,deliveryEmail,deliveryAddress,phone);

    
    }
}
