
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../favicon.jpg" rel="shortcut icon">
        <!--<link rel="stylesheet" href="../../../css/estilos1.css">-->
        <link rel="stylesheet" href="../css/estilos3.css">
        <title>Registrar premios</title>
    </head>
    <body>

        <script type="text/javascript">

            /*function MaysPrimera(string){
             return string.charAt(0).toUpperCase() + string.slice(1);
             }*/

            function soloLetras(e) {
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
                especiales = "8-37-39-46";

                tecla_especial = false
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }

                if (letras.indexOf(tecla) == -1 && !tecla_especial) {
                    return false;
                }
            }

            function solonumeros(e) {
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                numeros = "0123456789";
                especiales = "8-37-39-46";

                tecla_especial = false
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }

                if (numeros.indexOf(tecla) == -1 && !tecla_especial) {
                    return false;
                }
            }


        </script>

        <form action="../PremioServlet" method="post">
            <div >
                <h2> Registro de Premios </h2>
                <table border="0">
                    <tr>
                        <td><label>Nombre del premio</label></td>
                        <td><input name="txtNombre" type="text" placeholder="Nombre" required="" maxlength="15" minlenght="3" 
                                   style="text-transform:uppercase;" onkeypress=" return soloLetras(event)"></td>
                    </tr>
                    <tr>
                        <td><label>Coste de puntos </label></td>
                        <td><input name="txtCoste" type="text" placeholder="Complete este campo" required="" maxlength="15" minlenght="3" 
                                   style="text-transform:uppercase;" onkeypress=" return solonumeros(event)"></td>
                    </tr>
                    <tr>      
                        <td><label> Descripción </label></td>
                        <td><input name="txtDescrip" type="text" placeholder="Complete este campo" required="" maxlength="15" minlenght="3"
                                   style="text-transform:uppercase;"onkeypress=" return soloLetras(event)"></td>
                    </tr>
                    <tr>
                        <td><label>Imagen</label></td>
                        <td><input name="txtImagen" type="file" placeholder="Complete este campo" required="" maxlength="50" minlenght="3"></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td colspan="2"><input class="btE" name="btG" value="Guardar" type="submit" onclick=""></td>
                        
                    </tr>

                </table>
            </div>
        </form>
    </body>
</html>
