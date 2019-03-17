<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Pagina Alterar</title>
    </head>
    
    <body>
        <div class="container">
            <h2>Alterar produtos</h2>
        
            <form action="Executa_alterar.jsp" method="post">
            
            <div class="form-group">
                <label>Codigo</label>
                <input type="text" class="form-control" placeholder="Digite codigo" name="codigo" value="<%=request.getParameter("codigo")%>">
            </div>
            
            <div class="form-group">
                <label>Descricao:</label>
                <input type="text" class="form-control" placeholder="Digite a descricao:" name="descricao" value="<%=request.getParameter("descricao")%>">
            </div>
                
            <div class="form-group">
                <label>Preco:</label>
                <input type="number" class="form-control" placeholder="Digite preco:" name="preco" value="<%=request.getParameter("preco")%>">
            </div>
           
            <button type="submit" class="btn btn-sucess">Alterar produto</button>
            
            </form>
        </div>
    </body>
</html>
