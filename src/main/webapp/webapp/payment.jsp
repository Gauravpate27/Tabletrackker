<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
    
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

	  <!--link js-->
    
    
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
		</section>      

         <section class="sec2 pb-5">
            <div class="container about py-5" style="position:relative !important; top:100px !important;">
                <div class="row m-0">
                	
                	<div class="col-12 d-flex justify-content-end">
				
					
						<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root", "Gaurav@2701");
	
								String username=(String) session.getAttribute("name");
								
								
						%>
						
				
						<% 
								PreparedStatement ps = con.prepareStatement("select * from tabletracker.register where usrename = ?");
								ps.setString(1,username);
							
								ResultSet rs = ps.executeQuery();
							
									
								while (rs.next()) {
									%>
									
									
								<!-- <%= rs.getString("name") %> -->
									<% 
							}
 
								
							rs.close();
							ps.close();
							con.close();
							} catch (Exception e) {

							}
							%>
							
					
					
				
							
				
				<div class="offcanvas-body">
					<div class="col-12 my-2">
					
					<form method="post">
					
					<div class="row">
						
							
							
						<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root", "Gaurav@2701");
	
								String username=(String) session.getAttribute("name");
								
						
								PreparedStatement ps = con.prepareStatement("select * from tabletracker.register where usrename = ?");
								ps.setString(1,username);
							
								ResultSet rs = ps.executeQuery();
							
									
								while (rs.next()) {
									%>
									
									<h5 class="col-3">Name : <%= rs.getString("name") %></h5>				
									
										<h5 class="col-3">Mobile Number : <%= rs.getString("mobile_number") %></h5>
							
										<h5 class="col-3">Email : <%= rs.getString("usrename") %></h5>
									
									
									
									<% 
							}
 
								PreparedStatement ps1 = con.prepareStatement("select * from reservations where email = ?");
								ps1.setString(1,username);
							
								ResultSet rs1 = ps1.executeQuery();
							
									
								while (rs1.next()) {
									%>
								
									<h5 class="col-3">Date : <%= rs1.getString("date") %></h5>
									<h5 class="col-3">Time : <%= rs1.getString("reservation_time") %></h5>
									<h5 class="col-3">Persons : <%= rs1.getString("persons") %></h5>
									<h5 class="col-3">Table No : <%= rs1.getString("table_no") %></h5>
									<h5 class="col-3">Message : <%= rs1.getString("message") %></h5>
									
									
									<% 
							}
								
							rs1.close();
							ps1.close();
							rs.close();
							ps.close();
							con.close();
							} catch (Exception e) {

							}
							%>
						</div>
												
					</form>
						
							
					</div>
					
					
	<div class="a text-center" style=" width:100px; display:none;">
		<img src="images/qr.jpg" style="height:250px; width:250px;">
	</div>

    
   
					
					<div class="col-12 my-2">
						<h5>Pay Rs.500/-</h5>
						<button type="button" id="show">Show QR</button>
						<a href="confirmation-table.jsp"><button class="btn but b" type="submit" style="display:none;">Bill paid</button></a>
					</div>
				</div>
							
		</div>
     				
                </div>
            </div><!--end of container-->  
        </section> <!--end of sec2-->
       
        
      
        
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
        <script>
        
        $(document).ready(function(){
            $('#show').click(function(){
                $(".a").show('slow');
                // seconds,fast,slow
            });
            $('#show').click(function(){
                $('.b').show('5sec');
            });
            
        });
        </script>
        
</body>

</html>