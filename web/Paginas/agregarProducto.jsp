<%-- 
    Document   : agregarProducto
    Created on : 27-may-2021, 6:36:29
    Author     : bailarina77
--%>


<%@page import="Modelo.Presentacion"%>
<%@page import="Control.AccionesPresentacion"%>
<%@page import="Modelo.Tamano"%>
<%@page import="Control.AccionesTamano"%>
<%@page import="Modelo.Cantidad"%>
<%@page import="Control.AccionesCantidad"%>
<%@page import="Modelo.Promociones"%>
<%@page import="Control.AccionesPromociones"%>
<%@page import="Control.AccionesSabor"%>
<%@page import="Modelo.Sabor"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardar Producto</title>
        <link rel="stylesheet" href="../CSS/Estilos/agregarProducto.css">
    </head>
    <body>
        
        
        
        <form  method="POST" action="../guardarproducto">
            <h1>Agregar Producto</h1>
            
            <div class="select">
                <select id="sabor"  name = "sabor">   
                    <option selected disabled >SABORES DISPONIBLES</option>
                            <%
                                  
                            List<Sabor> lista=AccionesSabor.getAllSabores();
                            for(Sabor e: lista){
                                %>
                                    <option name="sabor"><%=e.getSabor()%></option>
                                    
                             <%
                            }
                                       
                                    
                             %>
                             
                             </select>
                         </div>
                             
            <div class="select">
                <select  id="promocion" name="promocion">
                    <option selected disabled>PROMOCIONES DISPONIBLES</option>
                             <%
                            List<Promociones> lista2=AccionesPromociones.getAllPromociones();
                            for(Promociones e: lista2){
                      %>
                      <option><%=e.getTipo_promocion()%> </option>
                       <%
                            }
                             %>
                </select>

            </div>    
                
                
                 <div class="select">
                <select id="cantidad" name="cantidad">
                    <option selected disabled>CANTIDAD</option>
                            <%
                            List<Cantidad> lista3=AccionesCantidad.getAllCantidades();
                            for(Cantidad e: lista3){
                      %>
                      <option><%=e.getUnidad_cantidad()%></option>
                       <%
                            }
                      %>
                </select>
                <select id="cantidad" name="valor">
                    <option selected disabled>VALOR</option>
                            <%
                            for(Cantidad e: lista3){
                      %>
                      <option><%=e.getValor_cantidad()%></option>
                       <%
                            }
                      %>
                </select>
            </div>
                
                 <div class="select">
                <select id="tamano" name="tamano">
                    <option selected disabled>TAMAÑOS DISPONOBLES</option>
                            <%
                                    List<Tamano> lista4=AccionesTamano.getAllTamanos();
                                    for(Tamano e: lista4){
                              %>
                              <option><%=e.getNombre_tamano()%></option>
                              <%
                                    }
                              %>
                </select>

            </div>
                
                 <div class="select">
                <select id="presentacion" name="presentacion">
                    <option selected disabled>PRESENTACIONES DISPONIBLES</option>
                             <%
                                    List<Presentacion> lista5=AccionesPresentacion.getAllPresentaciones();
                                    for(Presentacion e: lista5){
                              %>
                                <option><%=e.getTipo_presentacion()%></option>
                               <%
                                    }
                              %>
                </select>

            </div>                  
                
                
                 <div class="input">
                    <input type="text" name="precio" required class="search-box"  id="cantidad" placeholder="Ingresa el precio"/>
            </div>     
                 <div class="input">
                    <input type="text" name="stock" required class="search-box"  id="cantidad" placeholder="Ingresa el stock"/>
            </div> 
                
            <button type="submit" id="registrar">Registrar</button>        
                               
            </form>
                               
                                  
   
                    
    </body>
</html>
