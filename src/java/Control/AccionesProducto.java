/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Productos;
import Modelo.Sabor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bailarina77
 */
public class AccionesProducto {
    
    
    
    /*PARA EL REGISTRO*/
    public static int registrarProducto(Productos e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into mproducto(sabor  ,promocion ,cantidad ,valor ,tamaño , presentacion ,precio, stock)"
                    + "values(?,?,?,?,?,?,?,?)";
            
             PreparedStatement qs=con.prepareStatement(q);
             qs.setString(1, e.getSabor());
             qs.setString(2, e.getPromocion());
             qs.setString(3, e.getCantidad());
             qs.setString(4, e.getValor());
             qs.setString(5, e.getTamano());
             qs.setString(6, e.getPresentacion());
             qs.setString(7, e.getPrecio());
             qs.setString(8, e.getStock());
             System.out.println(qs);

            estatus=qs.executeUpdate();
            System.out.println("Registro exitoso");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al registrar");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }
    /*AQUI ACABA EL REGISTRO*/
    
    /*INICIA LA ACTUALIZACION*/   
    public static int actualizarProducto(Productos e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="update mproducto set sabor = ? ,promocion = ? ,cantidad = ?,valor = ?, tamaño = ?, presentacion = ?,precio = ?, stock =?"
                    +"where id_producto=?";
            PreparedStatement qs=con.prepareStatement(q);
             qs.setString(1, e.getSabor());
             qs.setString(2, e.getPromocion());
             qs.setString(3, e.getCantidad());
             qs.setString(4, e.getValor());
             qs.setString(5, e.getTamano());
             qs.setString(6, e.getPresentacion());
             qs.setString(7, e.getPrecio());
             qs.setString(8, e.getStock());
             qs.setInt(9, e.getId_producto());

            
            estatus=qs.executeUpdate();
            System.out.println("Actualizacion exitosa");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al actualizar");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }
    /*TERMINA LA ACTUALIZACION*/
    
    /*INICIA LA ELIMINACION*/
    
    public static int borrarProducto(int id){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="Delete from mproducto where id_producto=?";
            PreparedStatement ps=con.prepareStatement(q);
            
            ps.setInt(1,id);

            
            estatus=ps.executeUpdate();
            System.out.println("Eliminacion exitosa");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al eliminar");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }
    
    /*TERMINA LA ACTUALIZACION*/
    
    
        /*INICIA LA BUSQUEDA*/
    public static  Productos  buscarProductoById(int id){
        Productos e=new Productos();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from mproducto where id_producto=?";
            PreparedStatement ps=con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                e.setId_producto(rs.getInt(1));
                e.setSabor(rs.getString(2));
                e.setPromocion(rs.getString(3));
                e.setCantidad(rs.getString(4));
                e.setValor(rs.getString(5));
                e.setTamano(rs.getString(6));
                e.setPresentacion(rs.getString(7));
                e.setPrecio(rs.getString(8));
                e.setStock(rs.getString(9));
            }
            System.out.println("Se encontro al Usuario");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return e;
    }
    /*TERMINA LA BUSQUEDA*/
    
    
       /*INICIA LA LISTA*/
    public static List<Productos>  getAllProductos(){
        List<Productos> lista= new ArrayList<Productos>();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from mproducto";
            PreparedStatement ps=con.prepareStatement(q);
            
  
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Productos e=new Productos();
                e.setId_producto(rs.getInt(1));
                e.setSabor(rs.getString(2));
                e.setPromocion(rs.getString(3));
                e.setCantidad(rs.getString(4));
                e.setValor(rs.getString(5));
                e.setTamano(rs.getString(6));
                e.setPresentacion(rs.getString(7));
                e.setPrecio(rs.getString(8));
                e.setStock(rs.getString(9));
                lista.add(e);
                
            }
            System.out.println("Se encontro a los productos");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return lista;
    }
    /*TERMINA LA LISTA*/    

    
    
    
    
    
    
}
