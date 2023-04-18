/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gestion;
import Classes.Client;
import Connexion.Connexion;
import java.sql.ResultSet;



/**
 *
 * @author HP
 */
public class gestionClient {
    public ConnexBD connexion;
    public gestionClient() throws Exception{
        connexion = new ConnexBD();
    }

    /**
     *
     *
     */
    public void insert (Client obj) throws Exception {
        String query = "INSERT INTO etudiants (numcli,nomcli,prenom,telephone,adresse ) values ('"+obj.getNum() +"','"+ obj.getNom() + "','" + obj.getPrenom()+ "','" + obj.getPhone()+"','"+ obj.getAdresse()+"')";
        connexion.executeUpdate(query);
        connexion.close();
    }
    public void deleteclient (Integer numcli) throws Exception {
        String query = "DELETE FROM client WHERE numcli='"+numcli+"'";
        connexion.executeUpdate(query);
        connexion.close();
    }
    
    public void updateclient( Client c) throws Exception {
        String query = "UPDATE client SET nomcli='" + c.getNom()+ "',prenom='" + c.getPrenom()+ "',telephone='" + c.getPhone()+ "',adresse='" + c.getAdresse() + "' where numcli= "+ c.getNum();
       
        
        connexion.executeUpdate(query);
        connexion.close();
    }
    public ResultSet ChargerCombo()  throws Exception{
        String query="SELECT client.nomcli FROM client ORDER BY nomcli ASC";
        ResultSet rs = connexion.executeQuery(query);
        return rs;
    }

    

   
}
