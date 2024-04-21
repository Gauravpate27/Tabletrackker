package com.tblreservation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Register1")
public class Register1 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String mobileNumber = request.getParameter("mobile");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root",
                    "Gaurav@2701");
            String query = "INSERT INTO register (name, password, usrename, mobile_number) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, mobileNumber);

            preparedStatement.executeUpdate();
            connection.close();

//            if(name.equals(null))
//            {
//            	out.println("alert(The name is not null)");
//            }
//            
//            else {
//                // Redirect to a success page after successful registration
//                response.sendRedirect("success-register.jsp"); // Change "success.jsp" to the actual success page
//            }
            // Redirect to a success page after successful registration
            response.sendRedirect("success-register.jsp"); // Change "success.jsp" to the actual success page

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle the exception, you might want to redirect to an error page
            response.sendRedirect("error.jsp"); // Change "error.jsp" to the actual error page
        }
    }
}



