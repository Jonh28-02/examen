<%-- 
    Document   : consultarPromociones
    Created on : 26-may-2021, 2:00:14
    Author     : bailarina77
--%>

<%@page import="Control.AccionesPromociones"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Promociones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../../../CSS/Estilos/Tabla.css">
    </head>
    <body>

                        
                        
<section>
  <!--for demo wrap-->
  <h1>Tabla de Promociones</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
            <th>ID_Promocion</th>
            <th>Tipo de Promocion</th>
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
                            List<Promociones> lista=AccionesPromociones.getAllPromociones();
                            for(Promociones e: lista){
                      %>
                <tr>

                    <td><%=e.getId_promocion()%></td>
                    <td><%=e.getTipo_promocion()%></td>        
                    <td> <a href="editarPromociones.jsp?id=<%=e.getId_promocion()%>" >Editar</a> </td>
                    <td> <a href="../../../borrarPromocion?id=<%=e.getId_promocion()%>" >Borrar</a> </td>

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
