<%-- 
    Document   : inserir
    Created on : 14/01/2019, 15:33:33
    Author     : debora.campelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="excluir_tarefa.jsp" method="post">
            <label>Código: </label><br>
            <input type="text" name="id" value="<%=request.getParameter("id")%>"/><br>
            
            <label>Descrição: </label><br>
            <input type="text" name="descricao" value="<%=request.getParameter("descricao")%>"/><br>
            
            <label>Status: </label><br>
            <input type="text" name="status" value="<%=request.getParameter("status")%>"/><br>
            
            <button type="submit">SALVAR</button>
                  
        </form>
    </body>
</html>
