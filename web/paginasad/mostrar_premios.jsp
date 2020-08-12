

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controlador.GestionRegistroP"%>
<%@page import="controlador.RegistroPre" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="../css/estilo_tablas.css" rel="stylesheet" type="text/css"/>
    </head>
        <title>Mostar Premiso</title>
    </head>
    <body>
        <div class="container">
            <table border="1">
                <caption>Premios</caption>
                <thead>
                    <tr>
                        <th>Nombre producto</th>
                        <th>Coste puntos</th>
                        <th>Descripcion </th>

                    </tr>
                </thead>
                <tbody>
                    <%
                        GestionRegistroP gestion = new GestionRegistroP();
                        ArrayList<RegistroPre> prem = gestion.consultaGeneral();
                        for (RegistroPre re : prem) {
                    %>
                <form method="post" action="../CanjeServlet">
                    <tr>
                        <td><%=re.getNombre_premio()%></td>
                        <td><%=re.getCoste_puntos()%></td>

                         <td>
                             <input value="<%=re.getId_premios()%>" type="hidden"name="id">
                             <input type="submit" name="btV" value="ver"></td>
   
                    </tr>
                </form>
                <%

                    }//for
                %> 
                </tbody>
            </table>
        </div>
</html>
