<%-- 
    Document   : logout
    Created on : Aug 9, 2024, 8:59:47 AM
    Author     : KDV  SURANJAYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
    <% 
        // Invalidate the current session
        session.invalidate();
        response.sendRedirect("index.jsp");
    %>
      <!-- Redirect user to home page or login page -->
</body>
</html>
