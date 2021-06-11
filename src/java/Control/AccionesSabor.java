/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Sabor;
import java.sql.*;
import java.util.*;

public class AccionesSabor{
    
    
    
    /*PARA EL REGISTRO*/
    public static int registrarSabor(Sabor e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into Csaborhelado(sabor_helado)"
                    + "values(?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,e.getSabor());

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
    public static int actualizarSabor(Sabor e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="update Csaborhelado set  sabor_helado=?"
                    +"where id_saborhelado=?";
            PreparedStatement ps=con.prepareStatement(q);     
            ps.setString(1, e.getSabor());
            ps.setInt(2, e.getId_sabor());
            
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
    
    public static int borrarSabor(int id){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="Delete from Csaborhelado where id_saborhelado=?";
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
    public static  Sabor  buscarSaborById(int id){
        Sabor e=new Sabor();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from Csaborhelado where id_saborhelado=?";
            PreparedStatement ps=con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                e.setId_sabor(rs.getInt(1));
                e.setSabor(rs.getString(2));
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
    public static List<Sabor>  getAllSabores(){
        List<Sabor> lista= new ArrayList<Sabor>();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from Csaborhelado ";
            PreparedStatement ps=con.prepareStatement(q);
            
  
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Sabor e=new Sabor();
                e.setId_sabor(rs.getInt(1));
                e.setSabor(rs.getString(2));
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
