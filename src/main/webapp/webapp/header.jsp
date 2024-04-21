<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>

<div class="row nav1 fixed-top">


	<nav class="navbar navbar-expand-lg bg-light nav">

		<div class="container">
			<a class="navbar-brand logo" href="#"> <img
				src="images/logo-sm-svg.jpg" alt="img not found" class="img-fluid">
			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation" style="background-color: #F7A829;">
				<span class="navbar-toggler-icon"><i
					class="bi bi-justify p-0"></i></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav ms-auto links">
					<a class="nav-link active px-4" aria-current="page" href="index.jsp">Home</a>
					<a class="nav-link px-4" href="about.jsp">About</a> <a
						class="nav-link px-4" href="menu.jsp">Menu</a> <a
						class="nav-link px-4" href="testimonials.jsp">Testimonials</a> 
						<!--  <a
						class="nav-link px-4" href="contact.jsp">Contact</a> -->

					<button id="openPopup" class="but d-lg-block col-6 col-md-3">Reservation</button>

					<div id="reservationPopup">
						<div class="popup-content">
							<span class="close" id="closePopup">&times;</span>
							<h2>Reservation Form</h2>
							<form id="FormValidation" action="ReservationServlet"
								method="post">
								<div class="row">
									<div class="col-12 col-md-6 my-2">
										<input type="text" name="firstName" placeholder="First Name"
											required>
									</div>

									<div class="col-12 col-md-6 my-2">
										<input type="text" name="lastName" placeholder="Last Name"
											required>
									</div>

									<div class="col-12 col-md-6 my-2">
										<input type="tel" name="mobileNumber"
											placeholder="Mobile Number" required>
									</div>

									<div class="col-12 col-md-6 my-2">
										<input type="email" name="email" value="<%=(String) session.getAttribute("name")%>" required>
										
										
									</div>

								<!--<div class="col-12 col-md-6 my-2">
        								<input type="hidden" name="otp" id="otp" value="">
        								<button type="button" id="sendOtpButton">Send OTP</button>
    								</div>

    								<div class="col-12 col-md-6 my-2">
        								<input type="text" name="enteredOtp" placeholder="Enter OTP" required>
    								</div> -->

									<div class="col-12 col-md-6 my-2">
										<input type="time" name="time" required>
									</div>

									<div class="col-12 col-md-6 my-2">
										<input type="date" name="date" required>
									</div>

									<div class="col-12 col-md-6 my-2">
										<input type="number" name="selectPersons"
											placeholder="Select Persons" required>
									</div>

									<!-- <div class="col-12 col-md-6 my-2">
										<select id="view" name="view" required>
											<option value="" selected>Select View</option>
											<option value="bird">Bird View</option>
											<option value="lake">Lake View</option>
											<option value="lawn">Lawn View</option>
										</select>
									</div>  -->

									<!--  <div class="col-12 col-md-6 my-2">
										<select id="table" name="table" required>
											<option value="" style="display: none;" selected>Select
												Table</option>
											<option value="table1" data-views="bird"
												style="display: none;">Table 1</option>
											<option value="table2" data-views="bird"
												style="display: none;">Table 2</option>
											<option value="table3" data-views="lake"
												style="display: none;">Table 3</option>
											<option value="table4" data-views="lake"
												style="display: none;">Table 4</option>
											<option value="table5" data-views="lawn"
												style="display: none;">Table 5</option>
										</select>
									</div> -->

									<div class="col-12 col-md-6 my-2">
									
										<!--  <select id="table" name="table" required>
											<option value="" selected>Select Table</option>
											<option value="table1">Table 1</option>
											<option value="table2">Table 2</option>
											<option value="table3">Table 3</option>
											<option value="table4">Table 4</option>
											<option value="table5">Table 5</option>
										</select>-->

										<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root", "Gaurav@2701");

								PreparedStatement ps = con.prepareStatement("select name from table_info where available='Yes'");
								ResultSet rs = ps.executeQuery();
								out.print("<tr>");
								
								%>
								
								
								<select id="table" name="table" required>
								<option value="" selected>Select Table</option>
								<%
								while (rs.next()) {
									
									%>
									
									<option value="<%=rs.getString("name")%>"> <%=rs.getString("name")%></option>
								<%
								
							}
 
								
							rs.close();
							ps.close();
							con.close();
							} catch (Exception e) {

							}
							%>
							

							</select>
									</div>




									<div class="col-12 col-md-6 my-2">
										<textarea name="message" placeholder="Message"
											style="width: 100%;"></textarea>
									</div>

									<div class="col-12 col-md-4 my-2 mx-auto">
										 <button class="but" type="submit">
											Submit Reservation
										</button> 

										<!--  <button class="but" type="submit">
											<a href="confirmation-table.jsp">Submit Reservation</a>
										</button> -->


									</div>


								</div>

							</form>
						</div>

					</div>

					<!-- <i class="bi bi-bag"></i>-->




				</div>
			</div>
	</nav>


	<!-- User Dashboard start -->

	<div class="row g-0">
		<div class="col-12 d-flex justify-content-end">
		
		
			<button class="btn but user-profile" type="button"
				data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
				aria-controls="offcanvasRight">
				<i class="bi bi-person p-0"></i> 
			</button>
			
			

			<div class="offcanvas offcanvas-end" tabindex="-1"
				id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvasRightLabel">
					
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
									
									
									<%= rs.getString("name") %>
									<% 
							}
 
								
							rs.close();
							ps.close();
							con.close();
							} catch (Exception e) {

							}
							%>
							
					
					</h5>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
				</div>
				
							
				
				<div class="offcanvas-body">
					<div class="col-12 my-2">
					
					<form method="post">
						
							
							
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
									
									<h5>Name : <%= rs.getString("name") %></h5>
									<h5>Mobile Number : <%= rs.getString("mobile_number") %></h5>
									<h5>Email : <%= rs.getString("usrename") %></h5>
									
									
									<% 
							}
 
								PreparedStatement ps1 = con.prepareStatement("select * from reservations where email = ?");
								ps1.setString(1,username);
							
								ResultSet rs1 = ps1.executeQuery();
							
									
								while (rs1.next()) {
									%>
									
									<h5>Date : <%= rs1.getString("date") %></h5>
									<h5>Time : <%= rs1.getString("reservation_time") %></h5>
									<h5>Persons : <%= rs1.getString("persons") %></h5>
									<h5>Table No : <%= rs1.getString("table_no") %></h5>
									<h5>Message : <%= rs1.getString("message") %></h5>
									
									
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
							
												
					</form>
						
							
					</div>
					
					
					<div class="col-12 my-2">
						<a href="index-front.jsp"><button class="btn but"
								type="submit">Logout</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>


	
	
							
	<!-- User Dashboard End -->

	<!-- <nav class="d-flex nav justify-content-between col-12">
                <div class="logo p-4 col-2">
                    <a href="#">
                        <img src="images/logo-sm-svg.jpg" alt="img not found" class="img-fluid">
                    </a>
                </div>

                <ul class="d-lg-flex align-items-center d-none ">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="menu.jsp">Menu</a></li>
                    <li><a href="testimonials.jsp">Testimonials</a></li>
                    <li><a href="#">Contact</a></li>
                </ul> -->

	<!--  <div class="d-flex align-items-center justify-content-end bag pe-lg-5 pe-md-2">
                    <!-- <button class="but d-none d-lg-block">RESERVATION</button> -->
	<!--  <button id="openPopup" class="but d-none d-lg-block">Reservation</button>
                   	<div id="reservationPopup">
                        <div class="popup-content">
                            <span class="close" id="closePopup">&times;</span>
                            <h2>Reservation Form</h2>
                            <form id="FormValidation" action="ReservationServlet" method="post">
                                <div class="row">
                                    <div class="col-12 col-md-6 my-2">
                                        <input type="text" name="firstName" placeholder="First Name" required>
                                    </div>

                                    <div class="col-12 col-md-6 my-2">
                                        <input type="text" name="lastName" placeholder="Last Name" required>
                                    </div>

                                    <div class="col-12 col-md-6 my-2">
                                        <input type="tel" name="mobileNumber" placeholder="Mobile Number" required>
                                    </div>

                                    <div class="col-12 col-md-6 my-2">
                                        <input type="email" name="email" placeholder="E-mail" required>
                                    </div>

                                    <div class="col-12 col-md-6 my-2">
                                        <input type="time" name="time" required>
                                    </div>
                                    
                                    <div class="col-12 col-md-6 my-2">
                                        <input type="date" name="date" required>
                                    </div>

                                    <div class="col-12 col-md-6 my-2">
                                        <input type="number" name="selectPersons" placeholder="Select Persons" required>
                                    </div>
                                    
                                    <div class="col-12 col-md-6 my-2">		
                              			<select id="table" name="table" required>
                              				<option value="" selected>Select Table</option>
                                			<option value="table1">Table 1</option>
                                			<option value="table2">Table 2</option>
                                			<option value="table3">Table 3</option>
                                			<option value="table4">Table 4</option>
                                			<option value="table5">Table 5</option>   
                            			</select>
                            		</div>

                                    <div class="col-12 col-md-6 my-2">
                                        <textarea name="message" placeholder="Message" style="width: 100%;"></textarea>
                                    </div>

                                    <div class="col-12 col-md-4 my-2 mx-auto">
                                        <button class="but" type="submit">Submit Reservation</button>
                                    </div>

                                </div>
                               
                            </form>
                        </div>
                   	
                   
                    <i class="bi bi-bag"></i>
                    <i class="bi bi-list d-lg-none d-block"></i>
                </div>
            </nav> -->
</div>
<!--end of nav1-->




