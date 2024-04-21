<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

    
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!--font link-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <!--icon link-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css" integrity="sha384-/frq1SRXYH/bSyou/HUp/hib7RVN1TawQYja658FEOodR/FQBKVqT9Ol+Oz3Olq5" crossorigin="anonymous"/>

    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!--owl-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!--link css-->
    <link rel="stylesheet" href="CSS/style.css">

    <title>Restaurant Template</title>
</head>

<body>
    <div class="wrapper">

        <section class="sec1" id="back1">
            
          <jsp:include page='header.jsp'>
                     <jsp:param name="LogIn" value=""/>
              		</jsp:include>
            
       

            <div class="owl-carousel owl-theme">
                <div class="item hero col-lg-4 col-md-8 pt-5" data-aos="fade-up" data-aos-duration="3000">
                    <div class="hero1 offset-2" data-aos="fade-up" data-aos-duration="3000">
                        <div class="d-flex align-items-center">
                            <div class="line"></div>
                            <h5> Our Speciality </h5>
                        </div>
        
                        <h1 class="pt-3">Welcome Back <br>To Tastye</h1>
                        <p class="para">Quaerat debitis, vel, sapiente dicta sequi <br>labore porro pariatur harum expedita.</p>
                        <div class="d-flex menu mb-5">
                            <button>RESERVATION</button>
                            <p class="m-3">OPEN MENU</p>
                        </div>
                    </div>
                </div><!--end of hero-->

               

            </div><!--end of owl theme-->
        </section>  <!--end of sec1-->

        
       
        
      
        <section class="sec4">
            <div class="container testimonials">
              

                    <div class="row">
                        <div class="col-12 text-center visitor">
                            <div class="line"></div>
                            <h5>Our Menu</h5>
                            <h2>Use the tips <br>and recipes of our chefs</h2>
                            <p>Porro eveniet, autem ipsam corrupti consectetur cum.
                            <br> Repudiandae dignissimos fugiat sit nam.</p>
                        </div>
                    </div><!--end of row--> 

                    <div class="row">
                        <div class=" d-lg-none col-xl-1 d-xl-block"></div>

                        <div class="col-xl-10 col-lg-12">

                            <div class="row owl-carousel owl-theme abc">

                                <div class="food">
                                    <div class="food1">
                                        <div class="lorem">
                                            <button class="salad">SALADS</button>
                                        </div>
                                        <div class="space p-3">
                                            <h4>Supporting food flavors</h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et molestias.</p>
                                            <div class="dotted"></div>
                                            <div class="d-flex justify-content-between">
                                                <div class="testi d-flex align-items-center">
                                                    <img src="./images/men1.jpg" alt="img not found">
                                                    <h6 class="pt-2 ps-2">Oscar Oldman</h6>
                                                </div>
                                                <div>
                                                    <button>02.02.21</button>
                                                </div>
                                            </div>
                                        </div><!--end of space-->
                                        
                                    </div><!--end of food1-->
                                </div><!--end of food-->

                                <div class="food">
                                    <div class="food1">
                                        <div class="lorem1">
                                            <button class="salad">DESSERTS</button>
                                        </div>
                                        <div class="space p-3">
                                            <h4>Creamy Chicken Alfredo</h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et molestias.</p>
                                            <div class="dotted"></div>
                                            <div class="d-flex justify-content-between">
                                                <div class="testi d-flex align-items-center">
                                                    <img src="./images/2.jpg" alt="img not found">
                                                    <h6 class="pt-2 ps-2">VIKTORIA FREEMAN</h6>
                                                </div>
                                                <div>
                                                    <button>02.02.21</button>
                                                </div>
                                            </div>
                                        </div><!--end of space-->
                                    </div><!--end of food1-->
                                </div><!--end of food-->

                                <div class=" food">
                                    <div class="food1">
                                        <div class="lorem2">
                                            <button class="salad">SEAFOD</button>
                                        </div>
                                       <div class="space p-3">
                                        <h4>Air Fryer Salmon </h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et molestias.</p>
                                        <div class="dotted"></div>
                                        <div class="d-flex justify-content-between">
                                            <div class="testi d-flex align-items-center">
                                                <img src="./images/1.jpg" alt="img not found">
                                                <h6 class="pt-2 ps-2">EMMA NEWMAN</h6>
                                            </div>
                                            <div>
                                                <button>02.02.21</button>
                                            </div>
                                        </div>
                                       </div><!--end of space-->
                                    </div><!--end of food1-->
                                </div><!--end of food-->

                            </div><!--end of row-->
                        </div><!--end of col-10-->

                        <div class=" d-lg-none col-xl-1 d-xl-block"></div>
                    </div><!--end of row-->

                    <div class="row">
                        <div class="col-10 d-lg-flex d-md-flex justify-content-between align-items-center mx-auto py-5 all">
                            <p>Read the news of our restaurant, recipes for delicious fears, tips for your home kitchen in our blog!</p>
                            <button>ALL PUBLICATIONS</button>
                        </div>
                    </div><!--end of row-->

                    <div class="dotted"></div>

                    <div class="row py-5">
                            <div class="col-lg-10 col-12 newsletter mx-auto text-center">
                                <div class="line mx-auto mt-5"></div>
                                <h5 class="my-3 fs-6">NEWSLETTER</h5>
                                <h2 class="display-2 fw-bolder pb-4">Subscribe our newsletter</h2>
                                <p>Rolorem, beatae dolorum, praesentium itaque et quam quaerat.</p>
                                <div class="d-lg-flex d-md-flex d-block justify-content-center my-5">
                                    <input type="text" placeholder="Enter your Email Here" class="form-control">
                                    <button type="button" class="mt-2 mt-lg-0 mt-md-0">SUBSCRIBE</button>
                                </div>
                            </div><!--end of newsletter-->
                    </div><!--end of row-->

            </div><!--end of container-->
        </section><!--end of sec4-->

       <jsp:include page='footer.jsp'>
                     <jsp:param name="Footer" value=""/>
              		</jsp:include> 
      

    </div><!--end of wrapper-->
    

    
    <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <!--counterup-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js" integrity="sha512-CEiA+78TpP9KAIPzqBvxUv8hy41jyI3f2uHi7DGp/Y/Ka973qgSdybNegWFciqh6GrN2UePx2KkflnQUbUhNIA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js" integrity="sha512-d8F1J2kyiRowBB/8/pAWsqUl0wSEOkG5KATkVV4slfblq9VRQ6MyDZVxWl2tWd+mPhuCbpTB4M7uU/x9FlgQ9Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <!--aos-->
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

        <!--owl-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <script src="./script.js"></script>
        
</body>

</html>