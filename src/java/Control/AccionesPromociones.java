/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Promociones;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bailarina77
 */
public class AccionesPromociones {
    
    /*PARA EL REGISTRO*/
    public static int registrarPromocion(Promociones e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into Cpromocion(tipo_promocion )"
                    + "values(?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,e.getTipo_promocion());

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
    public static int actualizarPromocion(Promociones e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="update Cpromocion set  tipo_promocion=?"
                    +"where id_promocion=?";
            PreparedStatement ps=con.prepareStatement(q);     
            ps.setString(1, e.getTipo_promocion());
            ps.setInt(2, e.getId_promocion());
            
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
    
    public static int borrarPromocion(int id){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="Delete from Cpromocion where id_promocion=?";
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
    public static  Promociones  buscarPromocionById(int id){
        Promociones e=new Promociones();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from Cpromocion where id_promocion=?";
            PreparedStatement ps=con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                e.setId_promocion(rs.getInt(1));
                e.setTipo_promocion(rs.getString(2));
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
    public static List<Promociones>  getAllPromociones(){
        List<Promociones> lista= new ArrayList<Promociones>();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from Cpromocion ";
            PreparedStatement ps=con.prepareStatement(q);
            
  
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Promociones e=new Promociones();
                e.setId_promocion(rs.getInt(1));
                e.setTipo_promocion(rs.getString(2));
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
