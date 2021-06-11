<%-- 
    Document   : consultarSabores
    Created on : 23-may-2021, 22:33:29
    Author     : bailarina77
--%>

<%@page import="java.util.List"%>
<%@page import="Modelo.Sabor"%>
<%@page import="Control.AccionesSabor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--<link rel="stylesheet" href="../../../CSS/Estilos/EstiloGeneralCruds.css">-->
        <link rel="stylesheet" href="../../../CSS/Estilos/Tabla.css">
    </head>
    <body>
        

        
        
        
                           
                        
<section>
  <!--for demo wrap-->
  <h1>Tabla de Sabores</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
            <th>ID_Sabor</th>
            <th>Sabor del helado</th>
            <th></th>
            <th></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
        <tbody>
            <%
                            List<Sabor> lista=AccionesSabor.getAllSabores();
                            for(Sabor e: lista){
                      %>
                <tr>

                                    <td><%=e.getId_sabor()%></td>
                                    <td><%=e.getSabor()%></td>        
                                    <td> <a href="editarSabor.jsp?id=<%=e.getId_sabor()%>" >Editar</a> </td>
                                    <td> <a href="../../../borrarSabor?id=<%=e.getId_sabor()%>" >Borrar</a> </td>
                </tr>         
            <%
                            }
                      %>
        </tbody>
    </table>
  </div>
</section>                        
                        
      <ul class="menu">

          <li><a href="../../../Paginas/promociones.html">Regresar</a></li>

          <li class="bg"></li>
        </ul>              
                        
                            
        <script>
                $(window).on("load resize ", function() {
                var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
                $('.tbl-header').css({'padding-right':scrollWidth});
                }).resize();    
        </script>    
    
    </body>
</html>
