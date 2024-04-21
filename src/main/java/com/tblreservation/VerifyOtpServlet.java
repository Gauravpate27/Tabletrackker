package com.tblreservation;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/VerifyOtpServlet")
public class VerifyOtpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the entered OTP from the form
        String enteredOtp = request.getParameter("otp");

        // Retrieve the stored OTP from the session
        HttpSession session = request.getSession();
        String storedOtp = (String) session.getAttribute("otp");

        // Check if the entered OTP matches the stored OTP
        if (enteredOtp.equals(storedOtp)) {
            // OTP is valid, perform further actions (e.g., complete reservation)
            // You can redirect the user to a success page or handle it as needed
            response.sendRedirect("reservationSuccess.jsp");
        } else {
            // Invalid OTP, you might want to redirect the user to a failure page
            PrintWriter out = response.getWriter();
            out.println("<html><body><p>Invalid OTP. Please try again.</p></body></html>");
        }
    }
}
