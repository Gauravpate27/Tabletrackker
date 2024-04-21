<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>Welcome to the Admin Dashboard</h1>
    
    <h2>Restaurants</h2>
    <ul>
        <c:forEach items="${restaurants}" var="restaurant">
            <li>${restaurant.name}</li>
        </c:forEach>
    </ul>
    
    <h2>Reservations</h2>
    <table>
        <tr>
            <th>Table</th>
            <th>Date</th>
            <th>Time</th>
            <th>Guest Name</th>
        </tr>
        <c:forEach items="${reservations}" var="reservation">
            <tr>
                <td>${reservation.tableId}</td>
                <td>${reservation.date}</td>
                <td>${reservation.time}</td>
                <td>${reservation.guestName}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>