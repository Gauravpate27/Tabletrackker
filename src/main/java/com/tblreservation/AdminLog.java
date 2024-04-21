package com.tblreservation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Adminlogin")
public class AdminLog extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		RequestDispatcher dis = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/TableTracker", "root",
					"Gaurav@2701");
			PreparedStatement pst= con.prepareStatement("select * from register where usrename=? and password=?");
			pst.setString(1, username);
			pst.setString(2, password);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name",rs.getString("usrename"));
				dis=request.getRequestDispatcher("AdminDashboard.jsp");
				response.sendRedirect("AdminDashboard.jsp");
			}else {
				request.setAttribute("status","failed");
				dis=request.getRequestDispatcher("error-admin.jsp");
				
			}
			dis.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}

}

