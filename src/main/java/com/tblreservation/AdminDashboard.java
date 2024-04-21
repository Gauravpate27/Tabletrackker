package com.tblreservation;

import java.io.IOException;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateTable
 */
@WebServlet("/updateTable")
public class AdminDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDashboard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root", "Gaurav@2701");
			
			String aa = request.getParameter("Available");	
			
			int id = Integer.parseInt(request.getParameter("id"));
			String sql = "UPDATE table_info SET available = ? WHERE ID = ?";
			try (PreparedStatement ps = con.prepareStatement(sql)) {
			    ps.setString(1, aa); 
			    ps.setInt(2, id);
			    
			    int rowsAffected = ps.executeUpdate();
			    // Handle the result as needed
			} catch (Exception e) {
			    // Handle any SQL errors
			    e.printStackTrace();
			}
			
						
				
			RequestDispatcher q = request.getRequestDispatcher("AdminDashboard.jsp");
			q.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
