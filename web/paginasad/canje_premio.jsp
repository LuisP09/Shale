

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="conexion.DBConexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="controlador.RegistroPre"%>
<%@page import="java.util.ArrayList"%>
<%!
    String id_premios;
    String nombre_premio;
    String coste_puntos;
    String descripcion;
    String imagen;
    ArrayList<RegistroPre> registro;
%>
<%
    if (request.getAttribute("regis") != null) {
        registro = (ArrayList) request.getAttribute("regis");
        for (RegistroPre r : registro) {
            id_premios = r.getId_premios();
            nombre_premio = r.getNombre_premio();
            coste_puntos = r.getCoste_puntos();
            descripcion = r.getDescripcion();
            imagen = r.getImagen();
        }
    } else {
        id_premios = "";
        /*nombre_premio = "";
        imagen="";*/
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/estilo_tablas.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Premios</h1>
            <form method="post" action="/canje.jsp">
                <table border="1">
                    <thead>
                        <tr>
                            <th>Nombre producto</th>
                            <th>
                                <input value="<%=id_premios%>" type="hidden" name="id_premio">

                                <input value="<%=nombre_premio%>" type="text" name="txtN">
                            </th>
                        </tr>
                        <tr>
                            <th>Coste puntos</th>
                            <th>
                                <input value="<%=coste_puntos%>" type="text" name="txtCt">
                            </th>
                        </tr>
                        <tr>   
                            <th>Descripcion </th>
                            <th>
                                <input value="<%=descripcion%>" type="text" name="txtN">
                            </th>
                        </tr>
                        <tr>
                            <th>Imagen</th>
                            <th>
                                <img src="<%=imagen%>" width="350" height="250">
                            </th>
                        </tr>

                    </thead>

                </table>
            </form>
        </div>
    </body> 
</html>
