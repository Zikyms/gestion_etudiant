<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %>
    <%
	String login = "";
    if(session.getAttribute("login")!=null){
    	login = session.getAttribute("login").toString();
    }else{
    	response.sendRedirect("authentification.jsp");
    }
    	
    %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/inscription.css">
		<title>Modifier</title>
	</head>
<body>

		<%
		
				String url = "jdbc:mysql://localhost:3306/gestion_etu";
				String user = "root";
				String pwd = "";
				
				String id = request.getParameter("id_etu");
				
				
				try {
					Class.forName("org.gjt.mm.mysql.Driver");
					java.sql.Connection con = DriverManager.getConnection(url, user, pwd);
					
					java.sql.PreparedStatement pst = con.prepareStatement("SELECT * FROM etudiant where id_etu=id");
					
					ResultSet rs = pst.executeQuery();
					while(rs.next()) {
						%>

				<form action="Modifier" method='post'>
				
						<label for="fname">id :</label>
						<input type="text" id="" name="id_etu"  value="<%= rs.getString(1) %>">
						
						<label for="fname">Nom :</label>
						<input type="text" id="" name="nom" placeholder="Nom " value="<%= rs.getString(2) %>">
						
						<label for="fname">Prénom :</label>
						<input type="text" id="" name="prenom" value="<%= rs.getString(3)%>">
					    <br><br>
						<label for="sexe">Sexe : </label> 
							<input type="text" name="sexe" value="<%= rs.getString(4)%>"> 
							
						<br>
						<br><br>
						<label for="date">Date d'inscription :</label>
				  		<input type="text" id="" name="date" value="<%= rs.getString(5)%>">
				  		
				  		  <label for="filiere">Parcours:</label>
				  		  <input type="text" id="" name="parcours" value="<%= rs.getString(6)%>">
					  
						
						<input type="submit" value="Sauvegarder">
					  </form> 						
													
						
						<%
						
					}
					 	
						rs.next();
						
						rs.close();
						pst.close();
						con.close();	
				} catch (Exception e) {
					System.out.print(e);
				
				}
				%>
</body>
</html>