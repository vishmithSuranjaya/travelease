<%-- 
    Document   : user_profile
    Created on : Jul 25, 2024, 12:19:32 AM
    Author     : KDV  SURANJAYA
--%>

<%@page import="app.classes.dbConnector"%>
<%@page import="app.classes.User"%>
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
        <title>TravelEase</title>
        <!-- Bootstrap css -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        
        <link rel="stylesheet" href="./style.css">
        <style>
        
        </style>
    </head>
    <body>
        <!----------------------------------------------nav bar-------------------------------------------->
        <div class="nav_contain">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <img src="<%= request.getContextPath()%>/images/Vector.png" alt="" class="logo">
                    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                         aria-labelledby="offcanvasNavbarLabel">
                        <div class="offcanvas-header">
                            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">travelEase</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body">
                            <ul class="navbar-nav justify-content-center flex-grow-1 pe-3">
                                <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="./index.jsp">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="./package.jsp">Packages</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="./user_profile.jsp">Profile</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <%
                        
                        if (session.getAttribute("user_id") != null) {
                            %>
                            <a href="" class="login-button">Log Out</a>
                            <%
                        } else {
                            %>
                            <a href="./login.jsp" class="login-button">Login</a>
                            <%
                        }

                    %>

                    
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
            </nav>
        </div>
        <h2>User <span id="main-title">Profile</span></h2><br><br>

        <div class="row">
            <!---------user profile image------------>
            <div class="col-md-4">
                <h1></h1>
            </div>

            <!----------user details----------------->
            <div class="col-md-8 align-items-center">
                <%
                    if (request.getParameter("s") != null) {
                        if (request.getParameter("s").equals("1")) {
                %>

                <script>
                    alert("Successfully Updated Your Account!");
                </script>
                <%
                } else if (request.getParameter("s").equals("2")) {

                %>
                <script>
                    alert("Successfully Removed Your Account!");
                </script>
                <%
                    }
                 }
                %>
                <form action="./userProfile_inc.jsp" method="POST">

                    <div class="mb-3 row">
                        <label  class="col-sm-2 col-form-label">First Name</label>
                        <div class="col-sm-5">
                            <input type="text" name="fname" class="form-control" placeholder="abcd ">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label class="col-sm-2 col-form-label">Last Name</label>
                        <div class="col-sm-5">
                            <input type="text" name="lname" class="form-control" placeholder="user">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label class="col-sm-2 col-form-label">Phone No</label>
                        <div class="col-sm-5">
                            <input type="text" name="phoneNo" class="form-control" placeholder="0771234567">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label class="col-sm-2 col-form-label">Address</label>
                        <div class="col-sm-5">
                            <input type="text" name="address" class="form-control" placeholder="123,Colombo,Sri lanka">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-5">
                            <input type="text" name="email" class="form-control" placeholder="user@gmail.com">
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        <label class="col-sm-2 col-form-label">Password</label>
                        <div class="col-sm-5">
                            <input type="password" name="password" class="form-control" placeholder="">
                        </div>
                    </div>

                    <input type="submit" name="userAccount" value="Update Account" class="btn btn-outline-warning">
                    <input type="submit" name="userAccount" value="Delete Account" class="btn btn-outline-danger">
                    <input type="submit" name="userAccount" value="Log Out" class="btn btn-outline-primary">
                </form>
            </div>
        </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </body>
</html>
