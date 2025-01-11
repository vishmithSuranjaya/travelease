<%-- 
    Document   : admin
    Created on : Aug 8, 2024, 9:25:45 PM
    Author     : KDV  SURANJAYA
--%>

<%@page import="app.classes.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="app.classes.dbConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    User user = new User();
    if (session.getAttribute("user_id") != null) {
        int user_id = (Integer) session.getAttribute("user_id");
        user.setId(user_id);
    }else{
     response.sendRedirect("index.jsp");
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TravelEase - Admin</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <style>
            nav {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 10px 20px;
                background-color: #f8f8f8; /* Change to your desired background color */
                font-weight: 900;
            }

            .nav-logo img {
                height: 50px; /* Adjust based on your logo size */
            }

            .nav-links {
                flex-grow: 1;
                text-align: center;
            }

            .nav-links ul {
                list-style: none;
                padding: 0;
                margin: 0;
                display: flex;
                justify-content: center;
            }

            .nav-links li {
                margin: 0 15px;
                font-size: 18px; /* Adjust the font size as needed */

            }
            .nav-links li a{
                text-decoration: none;
                color: black;
            }
            .nav-links li a:hover{
                color: blue;

            }
            .nav-btn {
                display: flex;
                align-items: center;
            }

            .nav-btn button {
                background-color: black; /* Change to your desired button color */
                color: white;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
                font-size: 16px; /* Adjust the font size as needed */
                border-radius: 10px;
            }

            .nav-btn button a {
                color: white;
                text-decoration: none;
            }

            .nav-btn button:hover {
                background-color: darkgray; /* Adjust hover color as needed */
            }
            h2{
                font-size: 2rem;
                font-weight: 800;
            }
            #main-title{
                color: darkorange;
            }
            h1 {
                font-family: 'Poppins', sans-serif;
                font-size: 45px;
                font-weight: bolder;
            }
            .card-title {
                font-size: 1.5rem;
                font-weight: bold;
            }
            .card-text {
                font-size: 1rem;
            }
            .text-muted {
                font-size: 0.9rem;
            }
        </style>
    </head>
    <body>
        <!----------------------------------------------nav bar-------------------------------------------->
        <nav>
            <div class="nav-logo">
                <img src="logo.png" alt="logo comes here..">
            </div>

            <div class="nav-links">
                <ul>
                    <li><a href="admin_packages.jsp">Home</a></li>
                    <li><a href="admin_packages.jsp">Packages</a></li>
                    <li><a href="logout.jsp">Log Out</a></li>
                </ul>
            </div>

            <div class="nav-btn btn btn-black">
                <button><a href="logout.jsp">Log Out</a></button>
            </div>
        </nav>
        <div class="container mt-5">
            <h3 class="row justify-content-center">Registered User <span class="solution">Details</span></h3>
        <!-- Centering the table with Bootstrap classes -->
        <div class="row justify-content-center">
            <div class="col-md-8">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Address</th>
                            <th>Phone No</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            Connection con = dbConnector.getConnection();
                            String query = "SELECT * FROM customer";
                            PreparedStatement pstmt = con.prepareStatement(query);
                            ResultSet rs = pstmt.executeQuery();

                            while (rs.next()) {
                                String fname = rs.getString("fname");
                                String lname = rs.getString("lname");
                                String email = rs.getString("email");
                                String address = rs.getString("address");
                                String phoneNo = rs.getString("phoneNo");
                        %>
                        <tr>
                            <td><%= fname %></td>
                            <td><%= lname %></td>
                            <td><%= email %></td>
                            <td><%= address %></td>
                            <td><%= phoneNo %></td>
                        </tr>
                        <%
                            }
                            rs.close();
                            pstmt.close();
                            con.close();
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </body>
</html>
