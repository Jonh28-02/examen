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


import java.sql.*;
import javax.swing.JOptionPane;
public class Conexion {
    public static PreparedStatement prest=null;
    public static CallableStatement cllst=null;
    public static Connection conec=null;
    public static Statement st=null;
    public static ResultSet rt=null;
    public static String usu;
    public static String contra;
    public static String host;
    public static String db;
    
    
    public static Connection getConnection(){
        String url, userName, password;
        url="jdbc:mysql://localhost/heladeria";
        userName="root";
        password="ringorivera28";
        
        Connection con=null;
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,userName, password);
            System.out.println("Se conecto a la BD");
            
        }catch(Exception e){
            System.out.println("No se conecto, efe");
            System.out.println("e.getMessage()");
        }
        return con;
    }
    
    
    public void Conectar(){
        try{
            usu="root"; contra="2122loken"; host="localhost"; db="heladeria";
            String url="jdbc:mysql://"+host+"/"+db;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conec=DriverManager.getConnection(url,usu,contra);
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e.toString());
        }
    }
    
    
    
    
    
}

