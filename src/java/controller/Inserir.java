package controller;

import dao.ProdutoDao;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Produto;

@WebServlet(name = "Inserir", urlPatterns = {"/inserir"})
public class Inserir extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        
         ServletContext sc = request.getServletContext();
         
        try{
              Produto produto = new Produto();
              ProdutoDao prd = new ProdutoDao();
              if(request.getParameter("descricao").equals("") || request.getParameter("preco").equals("")){
                  response.sendRedirect("index.jsp");   
              }
              else{
                  produto.setDescricao_produto(request.getParameter("descricao"));
                  produto.setPreco_produto(Double.parseDouble(request.getParameter("preco")));
                  
                  prd.create(produto);
                  
                  response.sendRedirect("index.jsp");   
              }
          }
          catch(Exception erro){
              throw new RuntimeException("", erro);
          }
    }
    
    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
