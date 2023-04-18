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
		<title>Inscription</title>
	</head>
<body>
	<div align="right" margin-right="1cm">
	Bonjour <%= login %> <br>
	<a href="Logout"> Logout</a>
	</div>
	<h1> Ajouter un etudiant</h1>
	<form action="Ajouter" method='post'>
		<label for="fname">Nom :</label>
		<input type="text" id="" name="nom" placeholder="Nom ">
		
		<label for="fname">Prénom :</label>
		<input type="text" id="" name="prenom" placeholder="Prenom ">
	    <br><br>
		<label for="sexe">Sexe : </label> 
			<input type="radio" name="sexe" value="Femme"> Femme
			<input type="radio" name="sexe" value="Homme"> Homme
		<br>
		<br><br>
		<label for="date">Date d'inscription :</label>
  		<input type="date" id="" name="date" >
  		
  		  <label for="filiere">Parcours:</label>
  		  <select id="" name="parcours">
  			<option value=""> Cliquer ici pour choisir parcours</option>
  			<option value="AES" > AES</option>
  			<option value="DA2I" >DA2I</option>
  		  	<option value="RPM" >RPM</option>
  		</select> 
	  
		
		<input type="submit" value="Enregistrer">
	  </form> 

	
</body>
</html>