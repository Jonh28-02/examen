<%-- 
    Document   : detalle
    Created on : 11/06/2021, 03:32:29 PM
    Author     : river
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Datos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    </head>
    <body> 

        <div class="container" >
                <%
                    
                    String nombreUsuario = (String)session.getAttribute("Usuario");
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
                                int id = Integer.parseInt(request.getParameter("id"));
                                String q = "select id_producto, sabor, promocion, cantidad, valor, tamaño, presentacion, precio, stock from mproducto "
                                        + "where id_producto="+id;
                                set = con.createStatement();
                                rs = set.executeQuery(q);
                                
                                
                                /*
                                int precio, tamaño;
                                nombre = request.getParameter("nombre");
                                tipo = request.getParameter("ciudad");
                                precio= Integer.parseInt(request.getParameter("precio"));
                                tamaño= Integer.parseInt(request.getParameter("tamaño"));
ss
                                set = con.createStatement();
                                String q = "insert into registro(nom_pro, pre_pro, tip_pro, tamaño_pro) "
                                        + "values('"+nombre+"', '"+precio+"', '"+tipo+"' , '"+tamaño+"')";
                                int registro = set.executeUpdate(q);
                                */
                                
                                if(rs.next()){
                                %>
                                <h1>Se agregaron correctamente los parametros nwn</h1>

                                <br>
                                <a class="btn btn-outline-danger" href="menu.jsp" >Cancelar</a>
                                <a class="btn btn-outline-primary" href="registrarc.jsp?id=<%=rs.getInt("id_producto")%>&sabor=<%=rs.getString("sabor")%>&promocion=<%=rs.getString("promocion")%>&cantidad=<%=rs.getString("cantidad")%>&valor=<%=rs.getInt("valor")%>&tamano=<%=rs.getString("tamaño")%>&presentacion=<%=rs.getString("presentacion")%>&precio=<%=rs.getInt("precio")%>" >Aceptar</a>
                    
                                <%
                                }
                                    
                                
                                rs.close();
                                set.close();
                            }catch(SQLException ed){
                                System.out.println("Error al consultar los datos");
                                System.out.println(ed.getMessage());
                               
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
                
               
                    
                    
        </div>
        </body>
</html>