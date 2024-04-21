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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<!--font link-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

<!--icon link-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

<!--link css-->
<link rel="stylesheet" href="CSS/style.css">

<title>Admin Dashboard</title>

<style>
body {
	color: white;
}

ul {
	list-style: none;
	padding-left: 0;
	margin-bottom: 0;
}

.btn {
	display: inline-block;
	padding: 12px 36px;
	background-color: ;
	border: 1px solid ;
	color: white;
	cursor: pointer;
	transition: all .3s ease-in-out;
}

.text-center {
	text-align: center;
}

.container1 {
	max-width: 100%;
	width: 100%;
	padding-left: 15px;
	padding-right: 15px;
	margin-left: auto;
	margin-right: auto;
	color:black;
	background-color:#e5ebef;
	margin-top:150px;
	border-radius:10px;
}

@media ( min-width : 576px) {
	.container1 {
		max-width: 540px;
	}
}

@media ( min-width : 768px) {
	.container1 {
		max-width: 720px;
	}
	.tab-content{
		display:flex;
		justify-content:center;
	}
	
}

@media ( min-width : 992px) {
	.container1 {
		max-width: 960px;
	}
}

@media ( min-width : 1200px) {
	.container1 {
		max-width: 1140px;
	}
}

@media ( min-width : 1440px) {
	.container1 {
		max-width: 1310px;
	}
}

section {
	padding: 64px 0;
}

header {
	margin: 32px 0;
}

.hide {
	display: none;
}

.tab-nav {
	max-width: 300px;
	margin: 0 auto;
	border: 1px solid gainsboro;
}

.tab-nav button {
	width: 100%;
}

.tab-nav ul {
	display: none;
	flex-wrap: wrap;
	flex-direction: column;
	justify-content: center;
}

.tab-nav ul.show {
	display: block;
}
.show li{
	margin-top:12px;
}
@media ( min-width : 992px) {
	.tab-nav {
		max-width: 100%;
		border: 0;
	}
	.tab-nav ul {
		gap: 16px;
		flex-direction: row;
	}
}

.tab-content {
	/*padding: 32px;*/
	margin-top: 20px;
	border: 1px solid var(--color-primary);
}

.mobile-select {
	position: relative;
	max-width: 300px;
	margin: 0 auto;
	padding: 12px 16px;
	padding-right: 48px;
	cursor: pointer;
}

.mobile-select::after {
	content: '\f282';
	font-family: bootstrap-icons;
	display: inline-block;
	position: absolute;
	line-height: 1;
	right: 16px;
	top: 14px;
}

.mobile-select.active::after {
	transform: rotate(180deg);
}

@media ( min-width : 992px) {
	.mobile-select {
		display: none;
	}
	.tab-nav ul {
		display: flex;
	}
}

th,tr,td{
	padding:12px 3px;
	border:1px solid red;
}

.btn,.tab-nav{
	background-color: #f39c12;
    border:1px solid #f39c12;
    border-radius: 5px;
    padding: 15px 35px;
    font-family: 'Josefin Sans', sans-serif;
    font-weight: 600;
    font-size: 11px;
    transition: all 0.3s ease-in-out;
    letter-spacing: 2px;
    display: inline-block;
}

.btn.active, .btn:hover {
	
	border-color: var(--color-tertiary);
	background-color: #f7a829;
    transform: scale(1.04);
}
.tab-nav{
	background-color: #ffff;
}
</style>

</head>
<body>

	<div class="wrapper g-0">

		<div class="row nav1 g-0">
			<nav class="navbar navbar-expand-lg bg-body-tertiary nav">

				<div class="container">

					<a class="navbar-brand logo" href="#"> <img
						src="images/logo-sm-svg.jpg" alt="img not found" class="img-fluid">
					</a>

					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							<form class="d-flex" role="search">
								<input class="form-control me-2" type="search"
									placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-success" type="submit">Search</button>
								<button class="btn btn-outline-success mx-2"><a href="admin-login.jsp">LogOut</a></button>
							</form>
						</ul>

					</div>
				</div>
			</nav>

		</div>


		<section class="container1 text-center">
		
			<header class="text-center">
				<h2>Welcome to Admin Dashboard</h2>
			</header>
			<div class="tab-container">
				<nav class="tab-nav">
					<div class="mobile-select">
						<i class="bi bi-chevron-down"></i>
					</div>
					<ul>
						<li><button class="btn tab-btn active" id="html">View
								Register User</button></li>
						<li><button class="btn tab-btn" id="csss">View
								Registration</button></li>
						<li><button class="btn tab-btn" id="js">Update Table
								Availaibilty</button></li>
					<li><button class="btn tab-btn" id="jquery">View Subscribers</button></li>
				</ul>
				</nav>
				<div class="tab-content overflow-x-auto">
					<div class="tab-item" data-id="html">
						<table border="2">
							<tr>

								<form method="post">



									<th>Name</th>
									<th>Email</th>
									<th>Mobile</th>
							</tr>
							<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root", "Gaurav@2701");

								PreparedStatement ps = con.prepareStatement("select * from register");
								ResultSet rs = ps.executeQuery();
								out.print("<tr>");
								while (rs.next()) {
							%>
							<tr>
								<td><%=rs.getString("name")%></td>
								<td><%=rs.getString("usrename")%></td>
								<td><%=rs.getString("mobile_number")%></td>
							</tr>


							<%
							}

							rs.close();
							ps.close();
							con.close();
							} catch (Exception e) {

							}
							%>
						</form>
						
						</table>


					</div>


					<div class="tab-item hide" data-id="csss">
						<table border="2">
							<tr>

							<form method="post">
							
								<th>ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Mobile</th>
								<th>Email</th>
								<th>Time</th>
								<th>Date</th>
								<th>Persons</th>
								<th>Table No</th>
								<th>Message</th>

							</tr>
							<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root", "Gaurav@2701");

								PreparedStatement ps = con.prepareStatement("select * from reservations");
								ResultSet rs = ps.executeQuery();
								out.print("<tr>");
								while (rs.next()) {
							%>
							<tr>

								<td><%=rs.getString("id")%></td>
								<td><%=rs.getString("first_name")%></td>
								<td><%=rs.getString("last_name")%></td>
								<td><%=rs.getString("mobile_number")%></td>
								<td><%=rs.getString("email")%></td>
								<td><%=rs.getString("reservation_time")%></td>
								<td><%=rs.getString("date")%></td>
								<td><%=rs.getString("persons")%></td>
								<td><%=rs.getString("table_no")%></td>
								<td><%=rs.getString("message")%></td>

							</tr>


							<%
							}

							rs.close();
							ps.close();
							con.close();
							} catch (Exception e) {

							}
							%>
							
						</form>
						</table>

					</div>




				<div class="tab-item hide row" data-id="js">
				
				<div class="col-12 col-md-4 text-start pe-5 mb-3">
				
					<form method="post" action="updateTable">
						<label>Enter Table Number : </lable> 
						<input type="text" name="id"> <br>
						<input type="radio" id="age1" name="Available" value="Yes"> 
						<label for="age1">Available</label><br> 
						<input type="radio" id="age1" name="Available" value="No"> 
						<label for="age2">Not Available</label><br>
						<br> 
			
							<input type="submit" value="Submit" class="btn">
					</form>
				</div>
					
				<div class="col-12 col-md-8 ps-5">
				
					<table border="2">
							<tr>

								<form method="post">



									<th>ID</th>
									<th>Name</th>
									<th>Available</th>
							</tr>
							<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root", "Gaurav@2701");

								PreparedStatement ps = con.prepareStatement("select * from table_info");
								ResultSet rs = ps.executeQuery();
								out.print("<tr>");
								while (rs.next()) {
							%>
							<tr>
								<td><%=rs.getString("ID")%></td>
								<td><%=rs.getString("name")%></td>
								<td><%=rs.getString("available")%></td>
							</tr>


							<%
							}

							rs.close();
							ps.close();
							con.close();
							} catch (Exception e) {

							}
							%>
						</form>
						
						</table>
						
					</div>
					
					
				</div>
				
				<div class="tab-item hide" data-id="jquery">
						<table border="2">
							<tr>

							<form method="post">
							
								<th>ID</th>
								<th>Email</th>
							

							</tr>
							<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root", "Gaurav@2701");

								PreparedStatement ps = con.prepareStatement("select * from subscribers");
								ResultSet rs = ps.executeQuery();
								out.print("<tr>");
								while (rs.next()) {
							%>
							<tr>

								<td><%=rs.getString("id")%></td>
								<td><%=rs.getString("email")%></td>
							</tr>


							<%
							}

							rs.close();
							ps.close();
							con.close();
							} catch (Exception e) {

							}
							%>
							
						</form>
						</table>

					</div>



				</div>
			</div>
		</section>


	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

	<script>
	const select = document.querySelector(".mobile-select");
	const selectDynamicText = () => {
	  //mobile select
	  Array.from(select.nextElementSibling.children).forEach((li) => {
	    Array.from(li.children).forEach((child) => {
	      if (child.classList.contains("active")) {
	        let activeText = child.textContent;
	        select.textContent = activeText;
	      }
	    });
	  });
	};
	select.addEventListener("click", function () {
	  this.classList.toggle("active");
	  this.nextElementSibling.classList.toggle("show");
	});

	const handleCloseSelect = () => {
	  select.classList.remove("active");
	  select.nextElementSibling.classList.remove("show");
	};

	//custom tabs
	const tabContainer = document.querySelector(".tab-container");

	tabContainer.addEventListener("click", (e) => {
	  e.stopPropagation();
	  const tabNavs = document.querySelectorAll(".tab-nav button");
	  const tabItems = document.querySelectorAll(".tab-item");
	  if (e.target.classList.contains("tab-btn")) {
	    tabNavs.forEach((tabNav) => tabNav.classList.remove("active"));
	    tabItems.forEach((tabItem) => {
	      tabItem.classList.add("hide");
	      let tabId = tabItem.getAttribute("data-id");

	      if (e.target.getAttribute("id") === tabId) {
	        e.target.classList.add("active");
	        tabItem.classList.remove("hide");
	      }
	    });
	    selectDynamicText();
	    handleCloseSelect();
	  }
	});

	selectDynamicText();

	</script>


</body>
</html>