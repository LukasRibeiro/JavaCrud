<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ProdutoDao"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exec excluir</title>
    </head>
    <body>
        <%
            try{
                ProdutoDao prd = new ProdutoDao();
                prd.delete(Integer.parseInt(request.getParameter("codigo")));
                response.sendRedirect("index.jsp");
            }catch(Exception erro){
                throw new RuntimeException("", erro);
            }
        %>
    </body>
</html>
