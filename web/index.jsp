<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ProdutoDao"%>
<%@page import="model.Produto"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Pagina Inicial</title>
    </head>
    
    <body>
        <div class="container">
            <h2>Todos os produtos cadastrados</h2>
        
            <form action="index.jsp" method="POST">
                
                <div class="form-group">
                    <label>Descricao:</label>
                    <input type="text" class="form-control" placeholder="Digite a descricao:" name="descricao">
                </div>    
                <button type="submit" class="btn btn-success">Listar todos</button>
                <a type="button" class="btn btn-success" href="inserir.jsp">Novo produto</a>
            </form>
        </div>
            <%
                try{
                    out.print("<table>");
                    out.print("<tr>");
                    
                    out.println("<th>Codigo</th><th>Descricao</th><th>Preco</th><th>Editar</th><th>Excluir</th>");
                    
                    ProdutoDao prd = new ProdutoDao();
                    
                    if(request.getParameter("descricao") == " " || request.getParameter("descricao") == null){
                        ArrayList<Produto> lista = prd.listarTodos();
                        
                        for(int num = 0; num < lista.size(); num++){
                            out.print("<tr>");
                            
                            out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
                            out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
                            out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
                            out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"&preco="+lista.get(num).getPreco_produto()+" '>Alterar</a></td>");
                            out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"'>Excluir</a></td>");
  
                            out.print("</tr>");
                        }
                    }
                    else{
                        ArrayList<Produto> lista = prd.listarTodosDescricao(request.getParameter("descricao"));
                        for(int num = 0; num < lista.size(); num++){
                            out.print("<tr>");
                          
                            out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
                            out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
                            out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
                            out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"&preco="+lista.get(num).getPreco_produto()+" '>Alterar</a></td>");
                            out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"'>Excluir</a></td>");
  
                            out.print("</tr>");
                        }   
                    }
                    out.print("</tr>");
                    out.print("</table>");   
                }catch(Exception erro){
                    throw new RuntimeException("", erro);
                }
            %>
    </body>
</html>
