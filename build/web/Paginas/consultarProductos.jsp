<%-- 
    Document   : consultarProductos
    Created on : 23-may-2021, 22:01:24
    Author     : bailarina77
--%>

<%@page import="Control.AccionesProducto"%>
<%@page import="Modelo.Productos"%>
<%@page import="Modelo.Tamano"%>
<%@page import="Control.AccionesTamano"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Consultar Productos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../CSS/Estilos/Tabla.css">">
    </head>
    <body>
        
        
        <section>
          <!--for demo wrap-->
          <h1>Tabla de Promociones</h1>
          <div class="tbl-header">
            <table cellpadding="0" cellspacing="0" border="0">
              <thead>
                <tr>
                    <th>ID_Producto</th>
                    <th>SABOR</th>
                    <th>PROMOCION</th>
                    <th>CANTIDAD</th>
                    <th>VALOR</th>
                    <th>TAMAÑO</th>
                    <th>PRESENTACION</th>
                    <th>PRECIO</th>
                    <th>STOCK</th>
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
                                    List<Productos> lista=AccionesProducto.getAllProductos();
                                    for(Productos e: lista){
                              %>
                        <tr>

                            <td><%=e.getId_producto()%></td>
                            <td><%=e.getSabor()%></td>   
                            <td><%=e.getPromocion()%></td>
                            <td><%=e.getCantidad()%></td>
                            <td><%=e.getValor()%></td>
                            <td><%=e.getTamano()%></td>
                            <td><%= e.getPresentacion()%></td>
                            <td><%=e.getPrecio()%></td>
                            <td><%=e.getStock()%></td>
                            <td> <a href="editarProducto.jsp?id=<%=e.getId_producto()%>" >Editar</a> </td>
                            <td> <a href="./../borrarProducto?id=<%=e.getId_producto()%>" >Borrar</a> </td>

                        </tr>         
                    <%
                                    }
                              %>
                </tbody>
            </table>
          </div>
        </section>

              <ul class="menu">

                  <li><a href="Admin_PAG.html">Regresar</a></li>

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
