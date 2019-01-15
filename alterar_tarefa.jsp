<%-- 
    Document   : alterar_tarefa
    Created on : 11/01/2019, 16:57:38
    Author     : debora.campelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import='model.Tarefa'%>
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
               Tarefa trf = new Tarefa();
               TarefaDAO dao = new TarefaDAO();
               if(request.getParameter("descricao").equals("")|| request.getParameter("status").equals("")){
                   response.sendRedirect("index.jsp");
               }else{
                   trf.setTarefas_descricao(request.getParameter("descricao"));
                   trf.setTarefas_status(request.getParameter("status"));
                   trf.setIdtarefas(Integer.parseInt(request.getParameter("id")));
                   dao.alterar(trf);
                   response.sendRedirect("index.jsp");
               }
            }catch(Exception e){
                throw new RuntimeException("Falha no método jsp alterar tarefa: " + e);
            }
        %>
        
    </body>
</html>
