<%-- 
    Document   : consultarUsuarios
    Created on : 20-may-2021, 5:01:51
    Author     : bailarina77
--%>

<%@page import="Modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="Control.AccionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">-->
        <!--class="table table-striped table-bordered table-hover table-dark"-->
        <link rel="stylesheet" href="../CSS/Estilos/Tabla.css">
    </head>
    <body>
        <div class="container">
            <h1>Tabla de Usuarios</h1>
            <br>
            <table cellpadding="0" cellspacing="0" border="0" border="2">

                <!--CABECERA DE LA TABLA-->
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Usuario</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <!--<th>Contraseña</th>-->
                        <th>Domicilio</th>
                        <th>Edad</th>
                        <th>Telefono</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <!--FINAL CABECERA DE LA TABLA-->


                <!--CUERPO DE LA TABLA-->
                <tbody>
                    <%
                                    List<Usuario> lista=AccionesUsuario.getAllUsuarios();
                                    for(Usuario e: lista){
                              %>
                        <tr>

                            <td><%=e.getId()%></td>
                            <td><%=e.getUsuario()%></td>        
                            <td><%=e.getNombre()%></td>
                            <td><%=e.getAppe()%></td>
                            
                            <td><%=e.getDireccion()%></td>
                            <td><%=e.getEdad()%></td>
                            <td><%=e.getTelefono()%></td>
                            <td> <a href="editarUsuario.jsp?id=<%=e.getId()%>" >Editar</a> </td>
                            <td> <a href="../borrarUsuario?id=<%=e.getId()%>" >Borrar</a> </td>

                        </tr>         
                    <%
                                    }
                              %>
                </tbody>
                <!--CUERPO DE LA TABLA-->

            </table>
        </div>
        
    </body>
    <!--
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>-->
</html>
