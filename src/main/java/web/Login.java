package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/Login")

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession session = request.getSession();
	String login = request.getParameter("login");
	String passw = request.getParameter("pass");
	
	String url = "jdbc:mysql://localhost:3306/gestion_etu";
	String user = "root";
	String pwd = "";
	
	try {
		Class.forName("org.gjt.mm.mysql.Driver");
		java.sql.Connection con = DriverManager.getConnection(url, user, pwd);
		java.sql.PreparedStatement pst = con.prepareStatement("SELECT id_user FROM utilisateur WHERE nom=? AND mdp=?");
		pst.setString(1,login);
		pst.setString(2, passw);
		ResultSet rs = pst.executeQuery();
		if(rs.next()) {
			session.setAttribute("login", login);
			response.sendRedirect("index.jsp");
		}else response.sendRedirect("authentification.jsp"); 
			rs.close();
			pst.close();
			con.close();	
	} catch (Exception e) {
		System.out.print(e);
	
			}

		}
	}
//2 10