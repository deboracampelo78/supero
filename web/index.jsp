<%-- 
    Document   : index
    Created on : 14/01/2019, 16:00:55
    Author     : debora.campelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tarefa"%> 
<%@page import="dao.TarefaDAO"%> 
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TakList Supero</title>
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="./css/bootstrap-theme.min.css" />
    </head>
    <body  background="./img/8727.jpg">
        
        <div class='col-md-6'> 
            
            <br><img src="./img/logo.PNG"><br><br>
                <form action="index.jsp" method="post">
                    <h2>Task List Supero</h2><br>
                    <label>Título: </label>
                    <input type="text" name="descricao"/>    
                    <button type="submit" class="btn-primary"> <b>PESQUISAR</b></button><br>
                    <br>
                </form>
            
        </div>

        <%
            try {

                out.print("<div class='col-md-6'>");
                out.print("<div class='alert alert-info'>");
                out.print("<div class'panel panel-default'>");
                out.print("<center>");
                out.print("<table  width='100%'>");
                out.print("<tr>");
                out.print("<th>ID</th><th>TITULO</th><th>STATUS</th>");
                out.print("</tr>");
                out.print("</center>");
                out.print("</div>");
                out.print("</div>");
                TarefaDAO dao = new TarefaDAO();
                if (request.getParameter("descricao") == "" || request.getParameter("descricao") == null) {
                    ArrayList<Tarefa> lista = dao.listar();
                    for (int num = 0; num < lista.size(); num++) {
                        out.print("<tr>");
                        out.print("<td>" + lista.get(num).getIdtarefas() + "</td>");
                        out.print("<td>" + lista.get(num).getTarefas_descricao() + "</td>");
                        out.print("<td>" + lista.get(num).getTarefas_status() + "</td>");
                        out.print("<td><a href='alterar.jsp?id=" + lista.get(num).getIdtarefas() + " &descricao=" + lista.get(num).getTarefas_descricao() + " &status=" + lista.get(num).getTarefas_status() + "'>EDITAR</a></td>");
                        out.print("<td><a href='excluir.jsp?id=" + lista.get(num).getIdtarefas() + " &descricao=" + lista.get(num).getTarefas_descricao() + " &status=" + lista.get(num).getTarefas_status() + "'>EXCLUIR</a></td>");
                        out.print("</tr>");
                    }
                } else {
                    ArrayList<Tarefa> lista = dao.listarDescricao(request.getParameter("descricao"));
                    for (int num = 0; num < lista.size(); num++) {
                        out.print("<tr>");
                        out.print("<td>" + lista.get(num).getIdtarefas() + "</td>");
                        out.print("<td>" + lista.get(num).getTarefas_descricao() + "</td>");
                        out.print("<td>" + lista.get(num).getTarefas_status() + "</td>");
                        out.print("<td><a href='alterar.jsp?id=" + lista.get(num).getIdtarefas() + " &descricao=" + lista.get(num).getTarefas_descricao() + " &status=" + lista.get(num).getTarefas_status() + "'>EDITAR</a></td>");
                        out.print("<td><a href='excluir.jsp?id=" + lista.get(num).getIdtarefas() + " &descricao=" + lista.get(num).getTarefas_descricao() + " &status=" + lista.get(num).getTarefas_status() + "'>EXCLUIR</a></td>");
                        out.print("</tr>");
                    }
                }

                out.print("</table>");
                out.print("</div>");
            } catch (Exception e) {
                throw new RuntimeException("Falha no index para gravar a descrição: " + e);
            }
        %>

        <br><a href="inserir.jsp"><button type="submit" class="btn btn-primary"> <b>NOVA TAREFA</b></button></a>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="./js/bootstrap.min.js"></script>
    </body>
</html>
