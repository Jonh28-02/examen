<%-- 
    Document   : consultarPresentaciones
    Created on : 27-may-2021, 4:54:39
    Author     : bailarina77
--%>

<%@page import="Control.AccionesPresentacion"%>
<%@page import="Modelo.Presentacion"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Presentaciones</title>
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
                                    List<Presentacion> lista=AccionesPresentacion.getAllPresentaciones();
                                    for(Presentacion e: lista){
                              %>
                        <tr>

                            <td><%=e.getId_Presentacion()%></td>
                            <td><%=e.getTipo_presentacion()%></td>        
                            <td> <a href="editarPresentacion.jsp?id=<%=e.getId_Presentacion()%>" >Editar</a> </td>
                            <td> <a href="../../../borrarPresentacion?id=<%=e.getId_Presentacion()%>" >Borrar</a> </td>

                        </tr>         
                    <%
                                    }
                              %>
                </tbody>
            </table>
          </div>
        </section>

              <ul class="menu">

                  <li><a href="../../../Paginas/formato.html">Regresar</a></li>

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
