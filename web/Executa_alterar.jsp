<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDao"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
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
        %>
    </body>
</html>
