<%-- 
    Document   : excluir_tarefa
    Created on : 11/01/2019, 16:58:03
    Author     : debora.campelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import='dao.TarefaDAO'%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%

            try{
                TarefaDAO dao = new TarefaDAO();
                dao.excluir(Integer.parseInt(request.getParameter("id")));
                response.sendRedirect("index.jsp");
            }catch(Exception e){
                throw new RuntimeException("Falha no método jsp excluir tarefa: " + e);
            }
        %>

    </body>
</html>
