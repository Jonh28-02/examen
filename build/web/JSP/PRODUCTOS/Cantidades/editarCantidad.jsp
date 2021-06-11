<%-- 
    Document   : editarCantidad
    Created on : 26-may-2021, 5:45:57
    Author     : bailarina77
--%>

<%@page import="Modelo.Cantidad"%>
<%@page import="Control.AccionesCantidad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
        <link rel="stylesheet" href="../../../CSS/Estilos/EditarGeneral.css">
    </head>
    <body>
        <form method="POST" action="../../../actualizarCantidad" name="ActualizarCantidad" id="formulario2" class="formulario__register">
            <h2>Actualizar</h2>
            <%
                
                            int id = Integer.parseInt(request.getParameter("id"));                            
                            Cantidad e = AccionesCantidad.buscarCantidadById(id);
                
                    %>

            <canvas id='world'></canvas>      

            <div class="formulario__grupo" id="grupo__id2">
                <label for="valor" class="formulario__label"></label>
                <div class="formulario__grupo-input">                    
                        <input type="hidden" name="id2" value="<%=e.getId_cantidad()%>"  placeholder="ID"    >
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Ingresa unicamente valores numericos.</p>
            </div>                

            <!-- Grupo: Usuario -->
            <div class="formulario__grupo" id="grupo__valor2">
                <label for="valor" class="formulario__label">Valor</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="valor2" id="valor2" value="<%=e.getValor_cantidad()%>" placeholder="Ingresa el valor">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Ingresa unicamente valores numericos.</p>
            </div>
                    
                    
            <!-- Grupo: Usuario -->
            <div class="formulario__grupo" id="grupo__unidad2">
                <label for="unidad" class="formulario__label">Unidad</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="unidad2" id="unidad2" value="<%=e.getUnidad_cantidad()%>" placeholder="Ingresa la unidad">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Ingresa algo valido entre 1 y 5 caracteres.</p>
            </div>    
                    
                    
                    
     <div class="formulario__mensaje" id="formulario__mensaje">
                        <p><i class="fas fa-exclamation-triangle"></i> <b>Error:</b>Llena el formulario correctamente. </p>
                    </div>                    
                    
                    <button type="submit"  class="btn btn-primary btn-block btn-large"   id="Actualizar">Actualizar</button>
                    <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>

        </form> 

                    
                    
        <script src="../../../JS/EditarGeneral.js"></script>
    </body>
</html>
