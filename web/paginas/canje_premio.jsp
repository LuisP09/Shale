<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="conexion.DBConexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="controlador.RegistroPre"%>


<%!
    private String id_premios;
    private String nombre_premio;
    private String coste_puntos;
    private String descripcion;
    private String imagen;
    private String id_puntos;
    RegistroPre registro;
%>
<%
    if (request.getAttribute("resgistro") != null) {
        registro = (RegistroPre) request.getAttribute("registro");
        id_premios = registro.getId_premios();
        id_puntos = registro.getId_puntos();
        nombre_premio = registro.getNombre_premio();
    } else {
        id_premios = "";
        id_puntos = "";
        nombre_premio = "";
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <table border="1">
                <thead>
                    <tr>
                        <th>Nombre producto</th>
                        <th>Coste puntos</th>
                        <th>Descripcion </th>
                        <th>Imagen</th>
                    </tr>
                </thead>
                <tbody>
                    <%                        DBConexion db = new DBConexion();
                        try {
                            PreparedStatement consulta = db.getConexion().prepareStatement("select * from premios");

                            ResultSet rs = consulta.executeQuery();
                            while (rs.next()) {
                    %>
                <form method="post" action="">
                    <tr>
                        <td><%= rs.getString("nombre_premios")%></td>
                        <td><%= rs.getString("coste_puntos")%></td>
                        <td><%= rs.getString("descripcion")%></td>
                        <td><%= rs.getString("imagen")%></td>
                        <td>
                            <input type="hidden" name="txtId" value="<%= rs.getString(1)%>">
                        </td>               
                        <td>         
                        </td>
                    </tr>
                </form>
                <%
                        }//while
                        rs.close();
                        db.getConexion().close();
                    } catch (SQLException e) {
                        System.out.println("Error" + e);
                    }
                %>
                </tbody>
            </table>
        </div>
    </body>
</html>
