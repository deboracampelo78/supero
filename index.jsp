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
        <title>JSP Page</title>
    </head>
    <body>
        <form action="index.jsp" method="post">
            <label>Descrição: </label><br>
            <input type="text" name="descricao"/><br>
            <button type="submit"> ENVIAR</button>
        </form>
        
        <%
            try{
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>ID</th><th>DECRIÇÃO</th><th>STATUS</th><th>EDITAR</th><th>EXCLUIR</th>");
                TarefaDAO dao = new TarefaDAO();
                if(request.getParameter("descricao") == ""||request.getParameter("descricao") == null){
                    ArrayList<Tarefa> lista = dao.listar();
                    for(int num = 0; num < lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getIdtarefas()+"</td>");
                        out.print("<td>"+lista.get(num).getTarefas_descricao()+"</td>");
                        out.print("<td>"+lista.get(num).getTarefas_status()+"</td>");
                        out.print("<td>"+lista.get(num).getTarefas_status()+"</td>");
                        out.print("<td><a href='alterar.jsp?id="+lista.get(num).getIdtarefas()+" &descricao="+lista.get(num).getTarefas_descricao()+" &status="+lista.get(num).getTarefas_status()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='alterar.jsp?id="+lista.get(num).getIdtarefas()+" &descricao="+lista.get(num).getTarefas_descricao()+" &status="+lista.get(num).getTarefas_status()+"'>CLIQUE</a></td>");
                        out.print("</tr>");
                    }
                }else{
                     ArrayList<Tarefa> lista = dao.listarDescricao(request.getParameter("descricao"));
                    for(int num = 0; num < lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getIdtarefas()+"</td>");
                        out.print("<td>"+lista.get(num).getTarefas_descricao()+"</td>");
                        out.print("<td>"+lista.get(num).getTarefas_status()+"</td>");
                        out.print("<td>"+lista.get(num).getTarefas_status()+"</td>");
                        out.print("<td><a href='alterar.jsp?id="+lista.get(num).getIdtarefas()+" &descricao="+lista.get(num).getTarefas_descricao()+" &status="+lista.get(num).getTarefas_status()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='alterar.jsp?id="+lista.get(num).getIdtarefas()+" &descricao="+lista.get(num).getTarefas_descricao()+" &status="+lista.get(num).getTarefas_status()+"'>CLIQUE</a></td>");
                        out.print("</tr>");
                    }
                }
                
                out.print("</tr>");
                out.print("</table>");
            }catch(Exception e){
                throw new RuntimeException("Falha no index para gravar a descrição: " + e);
            }
            %>
            
            <a href="inserir.jsp">NOVO</a>
        
    </body>
</html>
