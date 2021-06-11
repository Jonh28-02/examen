<%-- 
    Document   : registrarc
    Created on : 11/06/2021, 03:37:25 PM
    Author     : river
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Usuarios</title>
    </head>
    <body>
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
                    
                    String sabor, tamano,tipo, cantidad, promocion, presentacion;
                    int precio,  id, valor, subtotal;
                    
                    
                    System.out.println("************");
                    id = Integer.parseInt(request.getParameter("id"));
                    sabor= request.getParameter("sabor");
                    promocion = request.getParameter("promocion");
                    cantidad = request.getParameter("cantidad");
                    valor = Integer.parseInt(request.getParameter("valor"));
                    tamano = request.getParameter("tamano");
                    presentacion = request.getParameter("presentacion");
                    
                    precio = Integer.parseInt(request.getParameter("precio"));
                   
                    
                    System.out.println(id);
                    System.out.println(sabor);
                    System.out.println(promocion);
                    
                    System.out.println(valor);
                    System.out.println(tamano);
                    
                    System.out.println(precio);
                    
                    System.out.println(presentacion);
                                        
                    // AQUI LA FECHA
                    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
                        
                    System.out.println(dtf.format(LocalDateTime.now()));
                    
                    subtotal = precio;
                    
                    
                    
                    set = con.createStatement();
                    
                    String q = "insert into dcompra(sabor, promocion, cantidad, valor, tamaño, presentacion, precio, subtotal, fecha, nom_usu) "
                            
                            + " values('"+sabor+"', '"+promocion+"' , '"+cantidad+"', '"+valor+"', '"+tamano+"', '"+presentacion+"', '"+precio+"', '"+subtotal+"', '"+dtf.format(LocalDateTime.now())+"', '"+usu+"' )";
                    
                    try{
                     
                    int registro = set.executeUpdate(q);   
                    }catch( SQLException e){
                        System.out.println("Error al registrar en la tabla");
                        System.out.println(e.getMessage());
                    }
                    /*
                    
                    String nombre,tipo;
                    int precio, tamaño;
                    
                    nombre = request.getParameter("nombre");
                    tipo = request.getParameter("ciudad");
                    precio= Integer.parseInt(request.getParameter("precio"));
                    tamaño= Integer.parseInt(request.getParameter("tamaño"));
                    
                    set = con.createStatement();
                    
                    String q = "insert into registro(nom_pro, pre_pro, tip_pro, tamaño_pro) "
                            + "values('"+nombre+"', '"+precio+"', '"+tipo+"' , '"+tamaño+"')";
                    
                    int registro = set.executeUpdate(q);
                    
                    */
                    
                    
                    
                    
                    
                    System.out.println("************");
                    /*
                    String q = "insert into dcompra(sabor, promocion, cantidad, valor, tamano, presentacion, precio, subtotal, fecha, id_usuario ) "
                            + "values('"++"', '"+tamaño+"', '"+tamaño+"', '"+tamaño+"', '"+tamaño+"')";
                    
                    int registro = set.executeUpdate(q);
                    */
                    %>
                    
                    <h1>Registro  nwn</h1>
                    
                    <%
                        System.out.println("-------------------");
                        set.close();
                        
                
                }catch(SQLException ed){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(ed.getMessage());
                    %>
                    
                    <h1>Registro No Exitoso, error al leer la tabla nwn</h1>
                    
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
                        System.out.println("-------------------");
            
            }
            
                        
            
            %>
            <br>
            <a class="btn btn-outline-primary" href="menu.jsp" >Regresar al Menú Principal</a>
        
        
    </body>
</html>