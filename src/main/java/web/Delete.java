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

@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("login")!=null){
	    	String id_etu = request.getParameter("id_etu");
	    	
	    	
	    	String url = "jdbc:mysql://localhost:3306/gestion_etu";
	    	String user = "root";
	    	String pwd = "";
	    	
	    	try {
	    		Class.forName("org.gjt.mm.mysql.Driver");
	    		java.sql.Connection con = DriverManager.getConnection(url, user, pwd);
	    		java.sql.PreparedStatement pst = con.prepareStatement("DELETE FROM etudiant where id_etu=? ");
	    		pst.setString(1,id_etu);
	    		
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
