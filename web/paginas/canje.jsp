
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/estilo_tablas.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
          <div class="container">
            <table border="1">
                <caption>Canjear premio</caption>
                <thead>
                    <tr>
                        <th>Puntos</th>
                        <th>Coste puntos</th>
                  

                    </tr>
                </thead>
                <tbody>
                  
                <form method="post" action="../CanjeServlet">
                    <tr>
                        <td></td>
                        <td></td>

                         <td>
                             
                             <input type="submit" name="btV" value="Canjear"></td>
   
                    </tr>
         
    
                </tbody>
            </table>
          </div>
    </body>
</html>
