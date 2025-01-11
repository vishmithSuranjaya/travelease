
<%@page import="app.classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="app.classes.Package"%>
<%@page import="app.classes.PackageDAO"%>
<%@page import="app.classes.dbConnector"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TravelEase - Packages</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <!-- Font Awesome CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <style>
            body {
                font-family: 'Poppins', sans-serif;
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
                            <a href="" class="login-button">Log Out</a>
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
        
        
        

        <div class="container">
            <h1 class="pt-5 ml-3"><span class="text-warning">Choose</span> your <span class="text-warning">Package</span>.</h1>
            <div class="row">
                <%
                    PackageDAO packageDAO = new PackageDAO();
                    List<Package> packages = packageDAO.getAllPackages();
                   // out.println("Packages size: " + packages.size()); // Debug print
                    if (packages.isEmpty()) {
                %>
                    <div class="col-12">
                        <p>No packages available at the moment.</p>
                    </div>
                <%
                    } else {
                        for (Package pkg : packages) {
                %>
                
                <div class="row">
                    <div class="card mb-4 shadow-sm">
<!--                         <img class="card-img-top" src="<%= pkg.getImage() %>" alt="Package image">-->
                        <div class="card-body">
                            <h3 class="card-title"><%= pkg.getTitle() %>, Sri Lanka</h3>
                            <h5 class="card-title">Package Overview</h5>
                            <p class="card-text"><%= pkg.getTitle() %></p>
                            <p class="card-text"><strong>People:</strong> <%= pkg.getNoPeople() %> people.</p>
                            <p class="card-text"><strong>Hotel Overview:</strong></p>
                            <p class="card-text"><%= pkg.getDescription() %></p>
                            <p class="card-text"><strong>Address:</strong> <%= pkg.getAddress() %></p>
                            <form action="./confirmPackage_form.jsp" method="post">
                                <input type="hidden" name="id" value="<%= pkg.getLoc_id() %>">
                                <input type="submit" value="Book Now" class="btn btn-outline-warning">
                            </form>
                        </div>
                    </div>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </body>
</html>
