package controllers;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import models.TentwalaItem;
import models.User;

@WebServlet("/show_tentwala_pic.do")
public class ShowTentwalaPicServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
       HttpSession session=request.getSession(); 
       User user = (User)session.getAttribute("user");
       String picPath=request.getParameter("picPath");
       String check="/WEB-INF/uploads/"+user.getEmail()+"/";

       if(picPath.equals(check)){
        System.out.println(picPath);
        picPath="/static/images/backdrop.jpg";
        System.out.println(picPath);
       }
    
        InputStream is=getServletContext().getResourceAsStream(picPath);
        OutputStream os=response.getOutputStream();
        byte[]arr=new byte[256];

        int count=0;

        while((count = is.read(arr)) != -1) {
            os.write(arr);
        }

        os.flush();
        os.close();
       
    }
}
