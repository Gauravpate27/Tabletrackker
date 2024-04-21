<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">


  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Log-In Form</title>

    <!--bootstrap Css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!--icon cdn-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <!--Css-->
    <link rel="stylesheet" href="CSS/style1.css">
  </head>
  <body>
  	
  	
    <div class="container-fluid wrapper">

       
            <div class="col-xl-4 col-lg-6 col-md-8 col-12 log mx-auto my-auto">
  
                <div class="row text-center">

                    <form action="login" method="post">

                        <div class="col-12 head">
                            <h1>Login Form</h1>
                        </div>
        
                        <hr class="mx-auto"> 

                        <div class="col-12 my-2 fields">
                            <span><i class="bi bi-person-circle"></i></span>
                            <input type="text" name="username" placeholder="Enter Your Email" required>
                        </div>

                        <div class="col-12 my-2 fields">
                            <span><i class="bi bi-file-lock2"></i></span>
                            <input type="password" name="password" placeholder="Enter Your Password" required>
                        </div>

                        <div class="col-12 fields">  
                            <button>LogIn</button>
                            
                            <p>New User - <a href="register.jsp"> Register</a></p>
   
                        </div>

                        <div class="col-12 social">  
                            <button class="gl"><i class="bi bi-google"></i> Google</button>
                            <button class="fb"><i class="bi bi-facebook"></i> Facebook</button>
                        </div>

                    </form>
                </div>
                
        
        </div>

    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">
	</script>
	
	
	
  </body>
</html>