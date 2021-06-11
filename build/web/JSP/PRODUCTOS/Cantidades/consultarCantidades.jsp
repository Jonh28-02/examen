<%-- 
    Document   : consultarCantidades
    Created on : 26-may-2021, 5:33:03
    Author     : bailarina77
--%>

<%@page import="Control.AccionesCantidad"%>
<%@page import="Modelo.Cantidad"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cantidades</title>
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
            <th>ID_Cantidad</th>
            <th>Cantidad</th>
            <th>Unidad</th>
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
                            List<Cantidad> lista=AccionesCantidad.getAllCantidades();
                            for(Cantidad e: lista){
                      %>
                <tr>

                    <td><%=e.getId_cantidad()%></td>
                    <td><%=e.getValor_cantidad()%></td>  
                    <td><%=e.getUnidad_cantidad()%></td> 
                    <td> <a href="editarCantidad.jsp?id=<%=e.getId_cantidad()%>" >Editar</a> </td>
                    <td> <a href="../../../borrarCantida?id=<%=e.getId_cantidad()%>" >Borrar</a> </td>

                </tr>         
            <%
                            }
                      %>
        </tbody>
    </table>
  </div>
</section>
                        
      <ul class="menu">

          <li><a href="../../../Paginas/cantidad.html">Regresar</a></li>

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
