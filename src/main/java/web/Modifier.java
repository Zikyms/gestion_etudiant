package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.DriverManager;

/**
 * Servlet implementation class Delete
 */

@WebServlet("/Modifier")
public class Modifier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("login")!=null){
			String id_etu = request.getParameter("id_etu");
	    	String nom = request.getParameter("nom");
	    	String prenom = request.getParameter("prenom");
	    	String sexe = request.getParameter("sexe");
	    	String date = request.getParameter("date");	    	
	    	String parcours = request.getParameter("parcours");
	    	
	    	String url = "jdbc:mysql://localhost:3306/gestion_etu";
	    	String user = "root";
	    	String pwd = "";
	    	
	    	try {
	    		Class.forName("org.gjt.mm.mysql.Driver");
	    		java.sql.Connection con = DriverManager.getConnection(url, user, pwd);
	    		java.sql.PreparedStatement pst = con.prepareStatement("UPDATE FROM etudiant (nom,prenom,sexe,date,parcours) VALUES (?,?,?,?,?) WHERE id_etu=id_etu");
	    		pst.setString(1,nom);
	    		pst.setString(2,prenom);
	    		pst.setString(3,sexe);
	    		pst.setString(4,date);
	    		pst.setString(5,parcours);
	    		pst.executeUpdate();
	    		response.sendRedirect("index.jsp");
	    			
	    			pst.close();
	    			con.close();	
	    	} catch (Exception e) {
	    		System.out.print(e);
	    	
	    			}

	    	
	    }else response.sendRedirect("authentification.jsp");
	    }

}
