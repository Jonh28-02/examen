/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Cantidad;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bailarina77
 */
public class AccionesCantidad {
    
    /*PARA EL REGISTRO*/
    public static int registrarCantidad(Cantidad e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into Ccantidad(valor_cantidad, unidad_cantidad)"
                    + "values(?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1,e.getValor_cantidad());
            ps.setString(2,e.getUnidad_cantidad());

            estatus=ps.executeUpdate();
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
    public static int actualizarCantidad(Cantidad e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="update Ccantidad set valor_cantidad=?,unidad_cantidad=?"
                    +"where id_cantidad=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1, e.getValor_cantidad());
            ps.setString(2, e.getUnidad_cantidad());
            ps.setInt(3, e.getId_cantidad());

            
            estatus=ps.executeUpdate();
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
    
    public static int borrarCantidad(int id){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="Delete from Ccantidad where id_cantidad=?";
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
    public static  Cantidad  buscarCantidadById(int id){
        Cantidad e=new Cantidad();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from Ccantidad where id_cantidad=?";
            PreparedStatement ps=con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                e.setId_cantidad(rs.getInt(1));
                e.setValor_cantidad(rs.getInt(2));
                e.setUnidad_cantidad(rs.getString(3));
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
    public static List<Cantidad>  getAllCantidades(){
        List<Cantidad> lista= new ArrayList<Cantidad>();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from Ccantidad ";
            PreparedStatement ps=con.prepareStatement(q);
            
  
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Cantidad e=new Cantidad();
                e.setId_cantidad(rs.getInt(1));
                e.setValor_cantidad(rs.getInt(2));
                e.setUnidad_cantidad(rs.getString(3));
                lista.add(e);
            }
            System.out.println("Se encontro a los usuarios");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return lista;
    }
    /*TERMINA LA LISTA*/
    

    
}
