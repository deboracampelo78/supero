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
        <title>Excluir Tarefa</title>
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="./css/bootstrap-theme.min.css" />
    </head>
    <body background="./img/8727.jpg">
        <div class='col-md-6'> 
            <br><img src="./img/logo.PNG"><br><br>
            <h2>Task List Supero</h2><br>
        </div> 
        <div class='col-md-6'>
            <div class='alert alert-info'>
                <center>
                    <form action="excluir_tarefa.jsp" method="post">
                        <label><b>Excluir Tarefa</b> </label><br>
                        <label>Código: </label><br>
                        <input type="text" name="id" value="<%=request.getParameter("id").trim()%>"/><br>
                        <label>Descrição: </label><br>
                        <input type="text" name="descricao" value="<%=request.getParameter("descricao")%>"/><br>
                        <label>Status: </label><br>
                        <input type="text" name="status" value="<%=request.getParameter("status")%>"/><br><br>
                        <button type="submit" type="submit" class="btn btn-primary">EXCLUIR</button>
                        <a href="index.jsp"><button type="submit" class="btn btn-primary"> VOLTAR</button></a>
                    </form>
                </center>
            </div>
        </div>
    </body>
</html>
