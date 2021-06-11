/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

/**
 *
 * @author bailarina77
 */

import Modelo.Usuario;
import java.sql.*;
import java.util.*;

public class AccionesUsuario {
    
    
    
    /*PARA EL REGISTRO*/
    public static int registrarUsuario(Usuario e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="insert into registro_usu(usuario,nombre,appe,password,dom,edad,telefono)"
                    + "values(?,?,?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,e.getUsuario());
            ps.setString(2,e.getNombre());
            ps.setString(3,e.getAppe());
            ps.setString(4,e.getPassword());
            ps.setString(5,e.getDireccion());
            ps.setString(6,e.getEdad());
            ps.setString(7,e.getTelefono());
            
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
    //validar
    public static int validar(Usuario e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="select * from registro_usu where usuario = ? and password = ? ";
             
              
             PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,e.getUsuario());
            ps.setString(2,e.getPassword());
             ResultSet rs = ps.executeQuery();
             while(rs.next()){
             
                   estatus = estatus +1 ;
                   e.setUsuario(rs.getString("usuario"));
                   e.setPassword(rs.getString("password"));
                   if(estatus == 1){
                   
                         return 1;
                   
             }else{
             
                   return 0;
             }
             }
            System.out.println("Registro exitoso");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al registrar");
            System.out.println(ed.getMessage());
        
          }
        return 0;
    }

    /*INICIA LA ACTUALIZACION*/
    public static int actualizarUsuario(Usuario e){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="update registro_usu set  usuario=?, nombre=?, appe=? ,"
                    +"password=?, dom=?, edad=?, telefono=?"
                    +"where id_usu=?";
            PreparedStatement ps=con.prepareStatement(q);
            
            ps.setString(1,e.getUsuario());
            ps.setString(2,e.getNombre());
            ps.setString(3,e.getAppe());
            ps.setString(4,e.getPassword());
            ps.setString(5,e.getDireccion());
            ps.setString(6,e.getEdad());
            ps.setString(7,e.getTelefono());
            ps.setInt(8, e.getId());
            
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
    
    public static int borrarUsuario(int id){
        int estatus=0;
        try{
            Connection con=Conexion.getConnection();
            String q="Delete from registro_usu where id_usu=?";
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
    public static  Usuario  buscarUsuarioById(int id){
        Usuario e=new Usuario();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from registro_usu where id_usu=?";
            PreparedStatement ps=con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                e.setId(rs.getInt(1));
                e.setUsuario(rs.getString(2));
                e.setNombre(rs.getString(3));
                e.setAppe(rs.getString(4));
                e.setPassword(rs.getString(5));
                e.setDireccion(rs.getString(6));
                e.setEdad(rs.getString(7));
                e.setTelefono(rs.getString(8));
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
    public static List<Usuario>  getAllUsuarios(){
        List<Usuario> lista= new ArrayList<Usuario>();
        try{
            Connection con=Conexion.getConnection();
            String q="select * from registro_usu";
            PreparedStatement ps=con.prepareStatement(q);
            
  
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Usuario e=new Usuario();
                e.setId(rs.getInt(1));
                e.setUsuario(rs.getString(2));
                e.setNombre(rs.getString(3));
                e.setAppe(rs.getString(4));
                e.setPassword(rs.getString(5));
                e.setDireccion(rs.getString(6));
                e.setEdad(rs.getString(7));
                e.setTelefono(rs.getString(8));
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
