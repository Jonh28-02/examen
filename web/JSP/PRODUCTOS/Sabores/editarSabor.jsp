<%-- 
    Document   : editarSabor
    Created on : 26-may-2021, 0:15:57
    Author     : bailarina77
--%>

<%@page import="Control.AccionesSabor"%>
<%@page import="Modelo.Sabor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../../../CSS/Estilos/EditarGeneral.css">
    </head>
    <body>
        <form method="POST" action="../../../actualizarSabor" name="ActualizarSabor" id="formulario2" class="formulario__register">
            <h2>Registrarse</h2>
            <%
                
                            int id = Integer.parseInt(request.getParameter("id"));                            
                            Sabor e = AccionesSabor.buscarSaborById(id);
                
                    %>

            <input type="hidden" name="id2" value="<%=e.getId_sabor()%>"  placeholder="ID"    >
                    
                    
            <!-- Grupo: Usuario -->
            <div class="formulario__grupo" id="grupo__usuario">
                <label for="usuario" class="formulario__label">Usuario</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="sabor2" id="sabor2" value="<%=e.getSabor()%>" placeholder="Ingresa el Sabor">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 dígitos y solo puede contener numeros, letras y guion bajo.</p>
            </div>
                    
                    
                    <button type="submit" id="Actualizar">Actualizar</button>
                    
        </form> 
                    
    </body>
</html>
