/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Presentacion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bailarina77
 */
public class AccionesPresentacion {
    
    
    
    /*PARA EL REGISTRO*/
    public static int registrarPresentacion(Presentacion e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into cpresentacion(tipo_presentacion )"
                    + "values(?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,e.getTipo_presentacion());

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
    public static int actualizarPresentacion(Presentacion e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="update cpresentacion set  tipo_presentacion=?"
                    +"where id_presentacion  =?";
            PreparedStatement ps=con.prepareStatement(q);     
            ps.setString(1, e.getTipo_presentacion());
            ps.setInt(2, e.getId_Presentacion());
            
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
    
    public static int borrarPresentacion(int id){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="Delete from cpresentacion where id_presentacion  =?";
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
    public static  Presentacion  buscarPresentacionById(int id){
        Presentacion e=new Presentacion();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from cpresentacion where id_presentacion  =?";
            PreparedStatement ps=con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                e.setId_Presentacion(rs.getInt(1));
                e.setTipo_presentacion(rs.getString(2));
            }
            System.out.println("Se encontro al Tamano");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return e;
    }
    /*TERMINA LA BUSQUEDA*/
    
    
       /*INICIA LA LISTA*/
    public static List<Presentacion>  getAllPresentaciones(){
        List<Presentacion> lista= new ArrayList<Presentacion>();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from cpresentacion ";
            PreparedStatement ps=con.prepareStatement(q);
            
  
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Presentacion e=new Presentacion();
                e.setId_Presentacion(rs.getInt(1));
                e.setTipo_presentacion(rs.getString(2));
                lista.add(e);
            }
            System.out.println("Se encontro a las presentaciones");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return lista;
    }
    /*TERMINA LA LISTA*/    
        
    
    
    
    
    
    
    
    
}
