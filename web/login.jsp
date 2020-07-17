<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="css/estilos1.css">
    <link rel="stylesheet" href="css/estilos2.css">
    <meta name="viewport" content="width=device-width, user-scalable=no,initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
   
<body >
    <main>
         <form action="LoginServlet" method="post" >
            <h4 class="title">Iniciar sesión</h4><br>
            
            <img src="imagenes/shale.png" width="350" height="250"><br>
            <input name="txtCorreo" type="email" placeholder="correo" autofocus required="" maxlength="100" minlenght="3" >
            <input name="txtContra" type="password" placeholder="contraseña" required="" maxlength="23" minlenght="3">
           
            <input  name="btn" type="submit" value="Iniciar Sesion">
        </form>
    </main>    
</body>
</html>