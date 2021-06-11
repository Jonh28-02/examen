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
public class Conexion2 {
    public static PreparedStatement prest=null;
    public static CallableStatement cllst=null;
    public static Connection conec=null;
    public static Statement st=null;
    public static ResultSet rt=null;
    public static String usu;
    public static String contra;
    public static String host;
    public static String db;
    public void Conectar(){
        try{
            usu="root"; contra="ringorivera28"; host="localhost"; db="heladeria";
            String url="jdbc:mysql://"+host+"/"+db;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conec=DriverManager.getConnection(url,usu,contra);
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e.toString());
        }
    }
}
