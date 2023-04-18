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
	
		<!-- <link rel="stylesheet" href="menu.css"> -->
		<link rel="stylesheet" href="./asssets/css/bootstrap.min.css">
		<script src="./asssets/js/bootstrap.min.js"></script>
	
		<title>Liste</title>
	</head>
<body>
	<div align="right" margin-right="1cm">
	Bonjour <%= login %> <br>
	<a href="Logout"> Logout</a>
	</div>
	<div>
		<h1 style="text-align: center;">Liste des etudiants </h1>
	</div>
		<div>
			<table class="table table-dark">
				<thead>
				<tr>
					<th> Matricule </th>
					<th> Nom </th>
					<th> Prénom </th>
					<th> Sexe </th>
					<th> Date d'inscription </th>
					<th> Parcours </th>
					<th> &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Action </th>
					
				</tr>
			</thead>
				<%
				String url = "jdbc:mysql://localhost:3306/gestion_etu";
				String user = "root";
				String pwd = "";
				int number = 0 ;
				
				try {
					Class.forName("org.gjt.mm.mysql.Driver");
					java.sql.Connection con = DriverManager.getConnection(url, user, pwd);
					java.sql.PreparedStatement pst = con.prepareStatement("SELECT * FROM etudiant");
					ResultSet rs = pst.executeQuery();
					while(rs.next()) {
						%>
						
						<tr>
							
							<td> <%= rs.getString(1) %></td>
							<td> <%= rs.getString(2) %></td>
							<td> <%= rs.getString(3) %></td>
							<td> <%= rs.getString(4) %></td>
							<td> <%= rs.getString(5) %></td>
							<td> <%= rs.getString(6) %></td>
							<td> <button type="button" class="btn btn-info" > <a href="modifier.jsp" style="color: white;"> Modifier </a> </button> <button type="button" class="btn btn-danger" > <a href="Delete?id_etu=<%= rs.getString(1) %>" style="color: white;"> Supprimer </a></button></td>
							
					
						</tr>
						<%
						
					}
					 	pst = con.prepareStatement("SELECT COUNT (*)  FROM etudiant");
						rs = pst.executeQuery();
						rs.next();
						number = rs.getInt(1);
						rs.close();
						pst.close();
						con.close();	
				} catch (Exception e) {
					System.out.print(e);
				
				}
				%>
								
			</table>
		</div>
	<!-- Nombre des etudiants : <%= number %> <br> -->
	<button type="button" class="btn btn-warning" > <a href="ajouter.jsp" style="color: white;"> Ajouter un etudiant </a> </button>
	
	
    
</body>
</html>