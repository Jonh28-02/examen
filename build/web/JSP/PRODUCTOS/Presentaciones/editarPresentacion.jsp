<%-- 
    Document   : editarPresentacion
    Created on : 27-may-2021, 4:57:54
    Author     : bailarina77
--%>

<%@page import="Control.AccionesPresentacion"%>
<%@page import="Modelo.Presentacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Presentaciones</title>
        <link rel="stylesheet" href="../../../CSS/Estilos/EditarGeneral.css">
    </head>
    <body>

        
        
                <form method="POST" action="../../../actualizarPresentacion" name="ActualizarPresentacion" id="formulario2" class="formulario__register">
            <h2>Actualizar</h2>
            <%
                
                            int id = Integer.parseInt(request.getParameter("id"));                            
                            Presentacion e = AccionesPresentacion.buscarPresentacionById(id);
                
                    %>

            <input type="hidden" name="id2" value="<%=e.getId_Presentacion()%>"  placeholder="ID"    >
                    
            <!-- Grupo: ID -->
            <div class="formulario__grupo" id="grupo__id2">
                <label for="id2" class="formulario__label"></label>
                <div class="formulario__grupo-input">                    
                        <input type="hidden" name="id2" value="<%=e.getId_Presentacion()%>"  placeholder="ID"    >
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Ingresa unicamente valores numericos.</p>
            </div>                

            <!-- Grupo: Tamano -->
            <div class="formulario__grupo" id="grupo__Tamano2">
                <label for="presentacion2" class="formulario__label">Presentacion</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="presentacion2" id="presentacion2" value="<%=e.getTipo_presentacion()%>" placeholder="Ingresa la presentacion">
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
