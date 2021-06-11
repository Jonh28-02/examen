<%-- 
    Document   : menu
    Created on : 11/06/2021, 03:21:09 PM
    Author     : river
--%>

<%@page import="java.util.Vector"%>
<%@page import="java.sql.*"%>
<%@page import="Control.Conexion"%>


<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<a href="../src/java/Conexion.java"></a>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center "> Bienvenido al catalgo de productos</h1>
            
        <div class="f">
            
                <%
                    String nombreUsuario = (String)session.getAttribute("Usuario");
                    
                    Connection con = null;
                    Statement set = null;
                    ResultSet rs = null;
                    Statement seta = null;
                    ResultSet rsa = null;
                    
                    String url, userName, password, driver;
                    url = "jdbc:mysql://localhost/heladeria";
                    userName = "root";
                    password = "ringorivera28";
                    driver = "com.mysql.jdbc.Driver";
                    
                    try{
                        Class.forName(driver);
                        con = DriverManager.getConnection(url, userName, password);
                        try{
                            //String a;
                            String q = "select * from  mproducto";
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            
                            /*
                            String a = "select id_producto from mproducto "
                                    + "where id_producto="+rs.getInt("id_producto");
                            seta = con.createStatement();
                            rsa = seta.executeQuery(a);
*/
                            /*
                            Vector<MProducto> listaproductos = new Vector<MProducto>();
                            try{
                                while(rs.next()){
                                    MProducto producto = new MProducto();
                                    producto.setId_producto(rs.getInt("id_producto"));
                                    producto.setId_tipohelado(rs.getInt("id_sabor"));
                                    //ctipohelado.setSabor_tipohelado(rs.getString("sabor_tipohelado"))
                                    producto.setId_promocion(rs.getInt("id_promocion"));
                                    producto.setId_cantidad(rs.getInt("id_cantidad"));
                                    producto.setId_tamano(rs.getInt("id_tamano"));
                                    producto.setId_presentacion(rs.getInt("id_presentacion"));
                                    producto.setPrecio_producto(rs.getDouble("precio"));
                                    listaproductos.add(producto);
                                }
                            }catch(SQLException sq){
                                System.out.println("Error al consultar los productos");
                                System.out.println(sq.getMessage());
                                listaproductos = null;
                            }
                            
                            for (int i = 0; i < listaproductos.size(); i++){
                                
                                System.out.println(listaproductos.get(i));
                                // aqui se puede referir al objeto con arreglo[i];
                            }
                            
                             //System.out.println(listaproductos);
                            */
                            /*
                            MProducto producto = new MProducto();
                            
                            a = producto.getProducto( String.valueOf(rs.getInt("id_producto")));
                            System.out.println(a);
                            */
                                    
                                while(rs.next()){
                               %>       
                               
                                <div class="card"  name="hola"  style="width: 100%;">
                                    <div class="card-body" >
                                        
                                      <h5 class="card-title" align="center"><%= "Producto: "+rs.getInt("id_producto") %></h5>
                                      <p class="card-text" align="center"><%= "Sabor: "+ rs.getString("sabor")%></p>
                                      <p class="card-text" align="center"><%= "Promocion: "+ rs.getString("promocion")%></p>
                                      <p class="card-text" align="center"><%= "Valor/Cantidad: "+rs.getInt("valor")+" "+ rs.getString("cantidad")%></p>

                                      <p class="card-text" align="center"><%= "Tamaño: "+ rs.getString("tamaño")%></p>
                                      <p class="card-text" align="center"><%= "Presentacion: "+ rs.getString("presentacion")%></p>
                                      <p class="card-text" align="center"><%= "Precio: $"+ rs.getInt("precio")%></p>
                                        <p class="card-text" align="center"><%= "Stock: "+ rs.getInt("stock")%></p>
                                        <a class="btn btn-outline-primary" href="detalle.jsp?id=<%=rs.getInt("id_producto")%>" > Agregar </a>
                                    </div>
                                  </div>
                                <%
                                
                            //aqui voy a recorrrer al vector
                                
                                
                            }
                            rs.close();
                            set.close();
                        
                        }catch(SQLException ed){
                            System.out.println("Error al consultar la tabla");
                            System.out.println(ed.getMessage());
                            %>
            
            <h1>Error el recurso de la consulta no esta disponible</h1>
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
                
        </div>    
                
            
        <div class="container" align="center">
        <br>
            <a class="btn btn-outline-primary" href="carro.jsp" >Ver carrito de compras</a>
        </div>
    </body>
</html>