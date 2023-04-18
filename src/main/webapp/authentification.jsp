<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>

 <html lang="en" class="no-js"> 
    <head>
        <meta charset="UTF-8" />
        
        <title> Authentification </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="images/logo.png" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/AnimateLogo.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />

	   	<link rel="stylesheet" href="css/userlogin.css" type="text/css" media="all" />

	
    </head>
    <body style="background-color: rgb(37, 37, 58)" >
    <!--background-image: url(image/1.jpg) -->
	
        <div class="container" >


            <section>				
                <div id="container_demo" >
                    
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        

                    
                        <div id="login" class="animate form">
                            <form  action="Login" method="post" autocomplete="on"> 
                             <h1>AUTHENTIFICATION</h1> 
                                <p> 
                                    <label for="username" class="uname" 
									> Nom d'utilsateur </label>
                                    <input type="text" name="login" required="required" type="text" placeholder=" ex: admin "/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" > Mot de passe </label>
                                    <input type="password" name='pass' required="required" type="password" placeholder="Votre mot de passe" /> 
                                </p>
                                
                                <p class="login button"> 
                                    <input type="submit" value="Se Connecter" /> 
								</p>

								
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>
