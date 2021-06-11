<%-- 
    Document   : consultarTamanos
    Created on : 27-may-2021, 3:16:59
    Author     : bailarina77
--%>

<%@page import="Control.AccionesTamano"%>
<%@page import="Modelo.Tamano"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tamanos</title>
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
                    <th>ID_Tamaño</th>
                    <th>Tipo de Tamaño</th>
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
                                    List<Tamano> lista=AccionesTamano.getAllTamanos();
                                    for(Tamano e: lista){
                              %>
                        <tr>

                            <td><%=e.getId()%></td>
                            <td><%=e.getNombre_tamano()%></td>        
                            <td> <a href="editarTamano.jsp?id=<%=e.getId()%>" >Editar</a> </td>
                            <td> <a href="../../../borrarTamano?id=<%=e.getId()%>" >Borrar</a> </td>

                        </tr>         
                    <%
                                    }
                              %>
                </tbody>
            </table>
          </div>
        </section>

              <ul class="menu">

                  <li><a href="../../../Paginas/tamano.html">Regresar</a></li>

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
