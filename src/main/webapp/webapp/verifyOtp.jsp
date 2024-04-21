<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>OTP Verification</title>
</head>
<body>

    <h2>OTP Verification</h2>

    <%-- Display a form for the user to enter the OTP --%>
    <form action="VerifyOtpServlet" method="post">
        Enter OTP: <input type="text" name="otp" required>
        <input type="submit" value="Verify">
    </form>

    <%-- You can include additional content or messages here --%>

</body>
</html>
