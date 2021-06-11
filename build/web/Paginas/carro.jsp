<%-- 
    Document   : carro
    Created on : 11/06/2021, 04:11:29 PM
    Author     : river
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>       
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        
        <div class="container" >
        <h1 align="center">Este es su carrito de compras </h1>
        <table class="table table-striped table-hover" >
            <thead>
                <tr>
                    <th>Id_compra</th>
                    <th>Sabor</th>
                    <th>Promocion</th>              
                    <th>Cantidad</th>
                    <th>Valor</th>
                    <th>Tamaño</th>
                    <th>Presentacion</th>
                    <th>Precio</th>
                    <th>Subtotal</th>
                    <th>Fecha</th>
                    <th>Nombre</th>
                    <th>Borrar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String usu = (String)session.getAttribute("Usuario");
                    Connection con = null;
                    Statement set = null;
                    ResultSet rs = null;
                    String url, userName, password, driver;
                    url = "jdbc:mysql://localhost/heladeria";
                    userName = "root";
                    password = "ringorivera28";
                    driver = "com.mysql.jdbc.Driver";
                    
                    try{
                        Class.forName(driver);
                        con = DriverManager.getConnection(url, userName, password);
                        try{
                            
                            
                            
                            String q = "select id_compra, sabor, promocion, cantidad, valor, tamaño, presentacion, precio, subtotal, fecha, nom_usu from dcompra "
                                    + " where nom_usu='" +usu+ "' ";
                            
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            %>
                                <tr>
                                    <td> <%=rs.getString("id_compra")%> </td>
                                    <td> <%=rs.getString("sabor")%> </td>
                                    <td> <%=rs.getString("promocion")%> </td>
                                    <td> <%=rs.getInt("valor")%> </td>
                                    <td> <%=rs.getString("cantidad")%> </td>
                                    <td> <%=rs.getString("tamaño")%> </td>
                                    <td> <%=rs.getString("presentacion")%> </td>
                                    <td> <%=rs.getInt("precio")%> </td>
                                    <td> <%=rs.getInt("subtotal")%> </td>
                                    <td> <%=rs.getString("fecha")%> </td>
                                    <td> <%=rs.getString("nom_usu")%> </td>
                                    <td> <a class="btn btn-outline-danger" href="borrarDC.jsp?id=<%=rs.getInt("id_compra")%>" > Borrar </a> </td>

                                </tr>        
                            
                            
                            <%
                                
                                
                            }
                            rs.close();
                            set.close();
                        
                        }catch(SQLException ed){
                            System.out.println("Error al consultar la tabla");
                            System.out.println(ed.getMessage());
                            %>
            </tbody>
            <h1>Error el recurso de la consulta no esta disponible, solo juguito contigo</h1>
                            <%
                        
                        }
                        con.close();
                    
                    }catch(Exception e){
                        System.out.println("Error al conectar con la bd");
                        System.out.println(e.getMessage());
                        System.out.println(e.getStackTrace());
                        %>
                    
                    <h1>Sitio en construcción</h1>
                    
                    <%
                    }
                    %>
                
                
            </tbody>
            
            
        </table>
            <br>
            <a class="btn btn-outline-primary" href="menu.jsp" >Regresar al Menú </a>
            <br>
        </div>
    </body>
</html>