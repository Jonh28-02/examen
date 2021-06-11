/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Tamano;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bailarina77
 */
public class AccionesTamano {

    /*PARA EL REGISTRO*/
    public static int registrarTamano(Tamano e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into Ctamano(nombre_tamano)"
                    + "values(?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,e.getNombre_tamano());

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
    public static int actualizarTamano(Tamano e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="update Ctamano set  nombre_tamano=?"
                    +"where id_tamano =?";
            PreparedStatement ps=con.prepareStatement(q);     
            ps.setString(1, e.getNombre_tamano());
            ps.setInt(2, e.getId());
            
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
    
    public static int borrarTamano(int id){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="Delete from Ctamano where id_tamano =?";
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
    public static  Tamano  buscarTamanoById(int id){
        Tamano e=new Tamano();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from Ctamano where id_tamano =?";
            PreparedStatement ps=con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                e.setId(rs.getInt(1));
                e.setNombre_tamano(rs.getString(2));
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
    public static List<Tamano>  getAllTamanos(){
        List<Tamano> lista= new ArrayList<Tamano>();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from Ctamano ";
            PreparedStatement ps=con.prepareStatement(q);
            
  
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Tamano e=new Tamano();
                e.setId(rs.getInt(1));
                e.setNombre_tamano(rs.getString(2));
                lista.add(e);
            }
            System.out.println("Se encontro a los tamanos");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());
        }
        return lista;
    }
    /*TERMINA LA LISTA*/    
    
    
}
