package com.tblreservation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DatabaseConnection
 */
@WebServlet("/ReservationServlet")
public class DatabaseConnection1 extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String mobileNumber = request.getParameter("mobileNumber");
		String email = request.getParameter("email");
		String time = request.getParameter("time");
		String date = request.getParameter("date");
		int selectPersons = Integer.parseInt(request.getParameter("selectPersons"));
		String table = request.getParameter("table");
		String message = request.getParameter("message");
		String Table_available = "No";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root","Gaurav@2701");
			String query = "INSERT INTO reservations (first_name, last_name, mobile_number, email, reservation_time, date, persons, table_no, message,Table_available) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, firstName);
			preparedStatement.setString(2, lastName);
			preparedStatement.setString(3, mobileNumber);
			preparedStatement.setString(4, email);
			preparedStatement.setString(5, time);
			preparedStatement.setString(6, date);
			preparedStatement.setInt(7, selectPersons);
			preparedStatement.setString(8, table);
			preparedStatement.setString(9, message);
			preparedStatement.setString(10, Table_available);
			preparedStatement.executeUpdate();


			String sql = "UPDATE table_info SET available = ? WHERE name = ?";
			try (PreparedStatement ps = connection.prepareStatement(sql)) {
			    ps.setString(1, Table_available);  // Assuming Table_available is an int, adjust accordingly
			    ps.setString(2, table);
			    
			    int rowsAffected = ps.executeUpdate();
			    
			    // Handle the result as needed
			} catch (SQLException e) {
			    // Handle any SQL errors
			    e.printStackTrace();
			}

			connection.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();

		}
		RequestDispatcher q = request.getRequestDispatcher("payment.jsp");
		q.forward(request, response);

	}
}

//package com.tblreservation;
//
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//import java.util.Random;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import java.util.Properties;
//import javax.mail.*;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//
//@WebServlet("/ReservationServlet")
//public class DatabaseConnection1 extends HttpServlet {
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		String firstName = request.getParameter("firstName");
//		String lastName = request.getParameter("lastName");
//		String mobileNumber = request.getParameter("mobileNumber");
//		String email = request.getParameter("email");
//		String time = request.getParameter("time");
//		String date = request.getParameter("date");
//		int selectPersons = Integer.parseInt(request.getParameter("selectPersons"));
//		String table = request.getParameter("table");
//		String message = request.getParameter("message");
//		String Table_available = "No";
//        
//        // Generate and store OTP
//        String otp = generateOTP();
//        HttpSession session = request.getSession();
//        session.setAttribute("otp", otp);
//
//        // Send OTP to the user's email (you can replace this with your email sending logic)
//        sendOTPEmail(email, otp);
//
//        // Now, the user will need to enter the OTP for verification.
//        // You can redirect the user to an OTP verification page or handle it in the same page.
//
//        // Continue with the reservation logic as you did before
//        try {
//			Class.forName("com.mysql.jdbc.Driver");
//			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root","Gaurav@2701");
//			String query = "INSERT INTO reservations (first_name, last_name, mobile_number, email, reservation_time, date, persons, table_no, message,Table_available) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
//			PreparedStatement preparedStatement = connection.prepareStatement(query);
//			preparedStatement.setString(1, firstName);
//			preparedStatement.setString(2, lastName);
//			preparedStatement.setString(3, mobileNumber);
//			preparedStatement.setString(4, email);
//			preparedStatement.setString(5, time);
//			preparedStatement.setString(6, date);
//			preparedStatement.setInt(7, selectPersons);
//			preparedStatement.setString(8, table);
//			preparedStatement.setString(9, message);
//			preparedStatement.setString(10, Table_available);
//			preparedStatement.executeUpdate();
//
//
//			String sql = "UPDATE table_info SET available = ? WHERE name = ?";
//			try (PreparedStatement ps = connection.prepareStatement(sql)) {
//			    ps.setString(1, Table_available);  // Assuming Table_available is an int, adjust accordingly
//			    ps.setString(2, table);
//			    
//			    int rowsAffected = ps.executeUpdate();
//			    
//			    // Handle the result as needed
//			} catch (SQLException e) {
//			    // Handle any SQL errors
//			    e.printStackTrace();
//			}
//
//			connection.close();
//		} catch (ClassNotFoundException | SQLException e) {
//			e.printStackTrace();
//
//		}
//		RequestDispatcher q = request.getRequestDispatcher("confirmation-table.jsp");
//		q.forward(request, response);
//
//	}
//
//    private String generateOTP() {
//        // Generate a 6-digit numeric OTP
//        return String.format("%06d", new Random().nextInt(1000000));
//    }
//
//    private void sendOTPEmail(String email, String otp) {
//    	
//    	
//        // TODO: Implement logic to send the OTP to the user's email
//    	
//    	
//    	    // Sender's email ID and password
//    	    final String senderEmail = "pategaurav5@gmail.com"; // Replace with your email
//    	    final String senderPassword = "Gaurav@1234"; // Replace with your email password
//
//    	    // Setup properties for the mail server
//    	    Properties properties = new Properties();
//    	    properties.put("mail.smtp.auth", "true");
//    	    properties.put("mail.smtp.starttls.enable", "true");
//    	    properties.put("mail.smtp.host", "smtp.gmail.com"); // For Gmail SMTP
//    	    properties.put("mail.smtp.port", "587");
//
//    	    // Create a Session object
//    	    Session session = Session.getInstance(properties, new Authenticator() {
//    	        protected PasswordAuthentication getPasswordAuthentication() {
//    	            return new PasswordAuthentication(senderEmail, senderPassword);
//    	        }
//    	    });
//
//    	    try {
//    	        // Create a MimeMessage object
//    	        Message message = new MimeMessage(session);
//
//    	        // Set From: header field
//    	        message.setFrom(new InternetAddress(senderEmail));
//
//    	        // Set To: header field
//    	        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
//
//    	        // Set Subject: header field
//    	        message.setSubject("Your OTP for Email Verification");
//
//    	        // Now set the actual message
//    	        message.setText("Your OTP for email verification is: " + otp);
//
//    	        // Send the message
//    	        Transport.send(message);
//
//    	        System.out.println("Email sent successfully!");
//
//    	    } catch (MessagingException e) {
//    	        e.printStackTrace();
//    	        System.out.println("Failed to send email.");
//    	    }
//    	}
//
//    }
