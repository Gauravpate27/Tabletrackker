package com.tblreservation;

import java.io.IOException;
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


@WebServlet("/Newsletter")
public class SubscriberNewsletter extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email = request.getParameter("news");
		

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root","Gaurav@2701");
			String query = "INSERT INTO subscribers (email) VALUES (?)";
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1,email);
			
			preparedStatement.executeUpdate();

			connection.close();
			
			response.sendRedirect("success-register.jsp");
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			RequestDispatcher q = request.getRequestDispatcher("error.jsp");
			q.forward(request, response);

		}
		

	}
}
