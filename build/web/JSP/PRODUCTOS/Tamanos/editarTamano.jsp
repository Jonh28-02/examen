<%-- 
    Document   : editarTamano
    Created on : 27-may-2021, 3:25:19
    Author     : bailarina77
--%>

<%@page import="Control.AccionesTamano"%>
<%@page import="Modelo.Tamano"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Tamaño</title>
        <link rel="stylesheet" href="../../../CSS/Estilos/EditarGeneral.css">
    </head>
    <body>
                <form method="POST" action="../../../actualizarTamano" name="ActualizarTamano" id="formulario2" class="formulario__register">
            <h2>Registrarse</h2>
            <%
                
                            int id = Integer.parseInt(request.getParameter("id"));                            
                            Tamano e = AccionesTamano.buscarTamanoById(id);
                
                    %>

            <input type="hidden" name="id2" value="<%=e.getId()%>"  placeholder="ID"    >
                    
            <!-- Grupo: ID -->
            <div class="formulario__grupo" id="grupo__id2">
                <label for="id2" class="formulario__label"></label>
                <div class="formulario__grupo-input">                    
                        <input type="hidden" name="id2" value="<%=e.getId()%>"  placeholder="ID"    >
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Ingresa unicamente valores numericos.</p>
            </div>                

            <!-- Grupo: Tamano -->
            <div class="formulario__grupo" id="grupo__Tamano2">
                <label for="tamano2" class="formulario__label">Valor</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="tamano2" id="tamano2" value="<%=e.getNombre_tamano()%>" placeholder="Ingresa el tamano">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Debe ser entre 1 y 20 caracteres.</p>
            </div>
                    
                    
            <div class="formulario__mensaje" id="formulario__mensaje">
                        <p><i class="fas fa-exclamation-triangle"></i> <b>Error:</b>Llena el formulario correctamente. </p>
            </div>                    
                    
                    <button type="submit"  class="btn btn-primary btn-block btn-large"   id="Actualizar">Actualizar</button>
                    <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
                    
        </form> 
                 
    </body>
</html>
