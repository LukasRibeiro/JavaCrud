package controller;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Index", urlPatterns = {"/index"})
public class Index extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response){
        
        ServletContext sc = request.getServletContext();
                    
                    //render da pagina index
        try{
            response.sendRedirect("index.jsp");   
       }
        catch(Exception e){
         System.out.println("erro" + e);
        }
    }
}
