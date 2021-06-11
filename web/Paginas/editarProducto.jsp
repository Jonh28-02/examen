<%@page import="Modelo.Productos"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Control.AccionesProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <body>
        <h1>Actualizar Usuario</h1>
        
        <form method="POST" action="../actualizarProducto" name="ActualizarUsuario" id="formulario2" class="formulario__register">
            <h2>ACTUALIZAR</h2>
            <%
                
                            int id = Integer.parseInt(request.getParameter("id"));                            
                            Productos e = AccionesProducto.buscarProductoById(id);
                
                    %>
                  <div class="formulario__grupo" id="grupo__usuario">
                <label for="usuario" class="formulario__label">ID</label>
                <div class="formulario__grupo-input">
                     <input type="text" name="id" value="<%=e.getId_producto()%>"  placeholder="ID"    >
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
        
            </div>
                    
                    
            <!-- Grupo: Usuario -->
            <div class="formulario__grupo" id="grupo__usuario">
                <label for="usuario" class="formulario__label">Sabor</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="sabor" id="sabor" value="<%=e.getSabor()%>" placeholder="Ingresa tu Usuario">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
        
            </div>


            <!-- Grupo: Nombre -->
            <div class="formulario__grupo" id="grupo__nombre">
                <label for="nombre" class="formulario__label">Promocion</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="promocion" id="promocion" value="<%=e.getPromocion()%>" placeholder="Ingresa tu Nombre">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
            </div>
              
                    <div class="formulario__grupo" id="grupo__password">
                <label for="password" class="formulario__label">Cantidad</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="cantidad" id="cantidad"   value="<%=e.getCantidad()%>" placeholder="Ingresa Contraseña">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              
            </div>
                    <div class="formulario__grupo" id="grupo__password">
                <label for="password" class="formulario__label">Valor</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="valor" id="cantidad"   value="<%=e.getValor()%>" placeholder="Ingresa Contraseña">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              
            </div>

            <!-- Grupo: Apellidos -->
            <div class="formulario__grupo" id="grupo__appe">
                <label for="appe" class="formulario__label">Tamaño</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="tamano2" id="tamano2" value="<%=e.getTamano()%>" placeholder="Ingresa tus Apellidos">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
            </div>


            <!-- Grupo: Contraseña -->
            <div class="formulario__grupo" id="grupo__password">
                <label for="text" class="formulario__label">Presentacion</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="presentacion" id="presentacion"   value="<%= e.getPresentacion()%>" placeholder="Ingresa Contraseña">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              
            </div>

            <!-- Grupo: Domicilio -->
            <div class="formulario__grupo" id="grupo__dom">
                <label for="dom" class="formulario__label">PRECIO</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="precio" id="precio" value="<%=e.getPrecio()%>"   placeholder="Domicilio">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
   
            </div>
                    <div class="formulario__grupo" id="grupo__dom">
                <label for="dom" class="formulario__label">Stock</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="stock" id="precio" value="<%=e.getStock()%>"   placeholder="Domicilio">
                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
            </div>

            <button type="submit" id="Actualizar">Actualizar</button>


                <!--ACABA EL CONTENEDOR DEL REGISTRO-->
                        </form>        
        
        
        
    </body>
</html>
