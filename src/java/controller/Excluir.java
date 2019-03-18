package controller;

import dao.ProdutoDao;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Excluir", urlPatterns = {"/excluir"})
public class Excluir extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        
        ServletContext sc = request.getServletContext();
                    
                    //Excluindo produto
         try{
            ProdutoDao prd = new ProdutoDao();
            prd.delete(Integer.parseInt(request.getParameter("codigo")));
            response.sendRedirect("index.jsp");
        }
         catch(Exception erro){
            throw new RuntimeException("", erro);
        }
    }
    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
