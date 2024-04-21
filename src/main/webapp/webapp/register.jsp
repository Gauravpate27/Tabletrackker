<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register Form</title>

    <!--bootstrap Css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!--icon cdn-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <!--Css-->
    <link rel="stylesheet" href="CSS/style1.css">
  </head>
  <body>
    <div class="container-fluid wrapper d-flex justify-content-center align-items-center">

       
            <div class="col-xl-4 col-lg-6 col-md-8 col-12 log justify-content-center align-items-center">
  
                <div class="row text-center">

                    <form action="Register1" method="post">

                        <div class="col-12 head">
                            <h1>Registeration Form</h1>
                        </div>
        
                        <hr class="mx-auto"> 

                        <div class="col-12 my-2 fields">
                            <span><i class="bi bi-person-circle"></i></span>
                            <input type="text" name="name" placeholder="Enter Your Name" required>
                        </div>

						 <div class="col-12 my-2 fields">
                            <span><i class="bi bi-file-lock2"></i></span>
                            <input type="password" name="password" placeholder="Enter Your Password" required>
                        </div>
                        
                         <div class="col-12 my-2 fields">
                            <span><i class="bi bi-file-lock2"></i></span>
                            <input type="password" name="Repassword" placeholder="Re-Enter Your Password" required>
                        </div>
                        
                        <div class="col-12 my-2 fields">
                            <span><i class="bi bi-envelope"></i></span>
                            <input type="email" name="email" placeholder="Enter Your E-mail" required>
                        </div>

                        <div class="col-12 my-2 fields">
                            <span><i class="bi bi-telephone"></i></span>
                            <input type="number" name="mobile" placeholder="Enter Your Mobile Number" required>
                        </div>

                        <div class="col-12 fields my-4">  
                            <button>Submit</button>
                            
                        	<p></p>
                         	<p>or Login With <a href="login.jsp"> Login</a></p>
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
  </body>
</html>