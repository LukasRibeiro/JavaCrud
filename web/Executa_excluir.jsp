<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                ProdutoDao prd = new ProdutoDao();
                prd.delete(Integer.parseInt(request.getParameter("codigo")));                
            }catch(){
                throw new RuntimeException("", erro);
            }
        %>
    </body>
</html>
