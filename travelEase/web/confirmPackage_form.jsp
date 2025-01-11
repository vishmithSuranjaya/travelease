<%-- 
    Document   : confirmPackage_form
    Created on : Jul 24, 2024, 9:06:09 PM
    Author     : KDV  SURANJAYA
--%>

<%@page import="app.classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

        <!-- Font Awesome CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <%
            if (request.getParameter("s") != null) {
                if (request.getParameter("s").equals("1")) {
        %>

        <script>
            alert("Booking successfull!");
        </script>
        <%
            
        } else if(request.getParameter("s").equals("0")) {

        %>
        <script>
            alert("An Error Occured!");
        </script>
        <%
        } else if(request.getParameter("s").equals("2")) {

        %>
        <script>
            alert("An Error Occured!");
        </script>
        <%                }
            }
         String id = request.getParameter("id");
        %>
        
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
                        User user = new User();
                        if (session.getAttribute("user_id") != null) {
                    %>
                    <a href="./logout.jsp" class="login-button">Log Out</a>
                    <%
                    } else {
                    %>
                    <a href="./Login.jsp" class="login-button">Login</a>
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
                    
        <h2>Confirmation <span id="main-title">Packages</span></h2>
        <form action="confirmBooking.jsp" method="POST">
            <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
                <div class="col-4">
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">NIC</label>
                        <input type="text" name="id" class="form-control"  placeholder="Enter your NIC" >
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label">Name</label>
                        <input type="text" name="fname" class="form-control"  placeholder="Enter your first Name" >
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput2" class="form-label">Phone No</label>
                        <input type="text" name="phoneNo" class="form-control" placeholder="Enter your Phone No">
                    </div>

                    <div class="mb-3">
                        <label for="formGroupExampleInput2" class="form-label">Booking Date</label>
                        <input type="date" name="bookingDate" class="form-control"  placeholder="">
                    </div>

                    <div class="mb-3">
                        <label for="formGroupExampleInput2" class="form-label">Address</label>
                        <input type="text" name="address" class="form-control"  placeholder="Enter your Address">
                    </div>

                    <div class="mb-3">
                        <label for="formGroupExampleInput2" class="form-label">Email</label>
                        <input type="email" name="email" class="form-control"  placeholder="Enter your Email">
                        <input type="hidden" name="loc_id" value="<%= id %>">
                    </div>

                    <div class="center-div mb-3">
                        <input type="submit" name="submit" value="Book Now" class="btn btn-outline-warning">
                    </div>
                </div>
            </div>
        </form>


    </body>
</html>
