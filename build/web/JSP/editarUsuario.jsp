<%-- 
    Document   : editarUsuario
    Created on : 20-may-2021, 23:58:54
    Author     : bailarina77
--%>

<%@page import="Modelo.Usuario"%>
<%@page import="Control.AccionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <body>
        <h1>Actualizar Usuario</h1>
        
        <form method="POST" action="../actualizarUsuario" name="ActualizarUsuario" id="formulario2" class="formulario__register">
            <h2>Registrarse</h2>
            <%
                
                            int id = Integer.parseInt(request.getParameter("id"));                            
                            Usuario e = AccionesUsuario.buscarUsuarioById(id);
                
                    %>

            <input type="hidden" name="id2" value="<%=e.getId()%>"  placeholder="ID"    >
                    
                    
            <!-- Grupo: Usuario -->
            <div class="formulario__grupo" id="grupo__usuario">
                <label for="usuario" class="formulario__label">Usuario</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="usuario2" id="usuario2" value="<%=e.getUsuario()%>" placeholder="Ingresa tu Usuario">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 dígitos y solo puede contener numeros, letras y guion bajo.</p>
            </div>


            <!-- Grupo: Nombre -->
            <div class="formulario__grupo" id="grupo__nombre">
                <label for="nombre" class="formulario__label">Nombre</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="nombre2" id="nombre2" value="<%=e.getNombre()%>" placeholder="Ingresa tu Nombre">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Ingresa un nombre valido.</p>
            </div>


            <!-- Grupo: Apellidos -->
            <div class="formulario__grupo" id="grupo__appe">
                <label for="appe" class="formulario__label">Apellidos</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="appe2" id="appe2" value="<%=e.getAppe()%>" placeholder="Ingresa tus Apellidos">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Solo se aceptan letras.</p>
            </div>


            <!-- Grupo: Contraseña -->
            <div class="formulario__grupo" id="grupo__password">
                <label for="password" class="formulario__label">Contraseña</label>
                <div class="formulario__grupo-input">
                    <input type="password" class="formulario__input" name="password2" id="password2"   value="<%=e.getPassword()%>" placeholder="Ingresa Contraseña">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">La contraseña tiene que ser de 4 a 12 dígitos.</p>
            </div>

            <!-- Grupo: Domicilio -->
            <div class="formulario__grupo" id="grupo__dom">
                <label for="dom" class="formulario__label">Domicilio</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="dom2" id="dom2" value="<%=e.getDireccion()%>"   placeholder="Domicilio">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Solo puede ingresar letras, puntos y numeros.</p>
            </div>

            <!-- Grupo: Edad -->
            <div class="formulario__grupo" id="grupo__edad">
                <label for="edad" class="formulario__label">Edad</label>
                <div class="formulario__grupo-input">
                    <input type="hidden" class="formulario__input" name="edad2" id="edad2" value="<%=e.getEdad() %>" placeholder="Edad">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Ingresa una edad valida.</p>
            </div>

            <!-- Grupo: Teléfono -->
            <div class="formulario__grupo" id="grupo__telefono">
                <label for="telefono" class="formulario__label">Telefono</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="telefono2" id="telefono2"  value="<%=e.getTelefono()%>" placeholder="Telefono">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Ingresa un telefono valido.</p>
            </div>


            <div class="formulario__mensaje" id="formulario__mensaje">
                <p><i class="fas fa-exclamation-triangle"></i> <b>Error:</b>Rellena el formulario correctamente. </p>
            </div>
                    
            <button type="submit" id="Actualizar">Actualizar</button>


                <!--ACABA EL CONTENEDOR DEL REGISTRO-->
                        </form>        
        
        
        
    </body>
</html>
