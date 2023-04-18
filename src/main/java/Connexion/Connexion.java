/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connexion;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author HP
 */
public class Connexion {

    public static Connection ConnexBD() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    

   
    Connection conx;
    Statement stmt;
    public static String host="localhost";
    public static String based="score";
    public static String user="root";
    public static String pass="";
    public Connexion(){
        try{
            Class.forName("org.gjt.mm.mysql.Driver");
            System.out.println(" driver marche");
        }catch(ClassNotFoundException e){
            System.err.print(e);
        }
        try{
            conx = DriverManager.getConnection("jdbc:mysql://"+host+"/"+based,user,pass);
            System.out.println("Connecté sur la base de donné score");
        }catch(SQLException e){
            System.err.print(e);
        }
    }
    public ResultSet executeQuery(String query)throws Exception{
	ResultSet rs;
	rs=stmt.executeQuery(query);
	return(rs);
}
    public int executeUpdate(String query) throws Exception{
        int res;
        res = stmt.executeUpdate(query);
        return res;
    }
    public Connection obtenirConnexion(){
        return conx;
    }
    public static void main(String[] args) throws SQLException{
        Connexion conx = new Connexion();
    }

    public Object JOptionPaneobtenirConnexion() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
