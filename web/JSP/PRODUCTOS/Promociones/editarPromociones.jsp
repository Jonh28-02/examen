<%-- 
    Document   : editarPromociones
    Created on : 26-may-2021, 2:00:37
    Author     : bailarina77
--%>

<%@page import="Control.AccionesPromociones"%>
<%@page import="Modelo.Promociones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Promos</title>
        <link rel="stylesheet" href="../../../CSS/Estilos/EditarGeneral.css">
    </head>
    <body>
        <form method="POST" action="../../../actualizarPromocionr" name="ActualizarPromocion" id="formulario2" class="formulario__register">
            <h2>ACTUALIZAR</h2>
            <%
                
                            int id = Integer.parseInt(request.getParameter("id"));                            
                            Promociones e = AccionesPromociones.buscarPromocionById(id);
                
                    %>

            <input type="hidden" name="id2" value="<%=e.getId_promocion()%>"  placeholder="ID"    >
                    
                    
            <!-- Grupo: Usuario -->
            <div class="formulario__grupo" id="grupo__usuario">
                <label for="usuario" class="formulario__label">Usuario</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="promocion2" id="promocion2" value="<%=e.getTipo_promocion()%>" placeholder="Ingresa la promocion">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 dígitos y solo puede contener numeros, letras y guion bajo.</p>
            </div>
                    
                    
                    <button type="submit" id="Actualizar">Actualizar</button>
                    
        </form> 
    </body>
</html>
