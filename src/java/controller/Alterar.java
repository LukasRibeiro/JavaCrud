package controller;

import dao.ProdutoDao;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Produto;

@WebServlet(name = "Alterar", urlPatterns = {"/alterar"})
public class Alterar extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        
        ServletContext sc = request.getServletContext();
                       
                      //Alterando produto
         try{
            Produto produto = new Produto();
            ProdutoDao prd = new ProdutoDao();
            
            if(request.getParameter("descricao").equals("") || request.getParameter("preco").equals("")){
                response.sendRedirect("index.jsp");   
            }
            else{
                produto.setDescricao_produto(request.getParameter("descricao"));
                produto.setPreco_produto(Double.parseDouble(request.getParameter("preco")));
                produto.setCodigo_produto(Integer.parseInt(request.getParameter("codigo")));
                
                prd.update(produto);
                
                response.sendRedirect("index.jsp");   
            }
        }catch(Exception erro){
            throw new RuntimeException("", erro);
        }   
    }
    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
