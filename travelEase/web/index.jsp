<%-- 
    Document   : index
    Created on : Aug 8, 2024, 5:08:14 PM
    Author     : nilakshanraveendran
--%>

<%@page import="app.classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
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
    alert("Suucessfully Logged In");
</script>
<%
} else if(request.getParameter("s").equals("2")){
%>
<script>
    alert("Succefully Registered!");
</script>
<%
    }
}
%>
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


        <div class="body_containnn_1">
            <div class="left_contain">
                <h1>
                    Your One-Stop <span class="solution">Solution</span> for Perfect <span class="solution">Tour
                        Packages</span>.
                </h1>
                <p>
                    We simplify your travel planning by offering comprehensive tour packages that include hotel bookings and
                    trip details.
                </p>
                <a href="./package.jsp" class="book-button">Book</a>
            </div>
            <div class="right_contain">
                <img src="<%= request.getContextPath()%>/images/Group 17.png" alt="">
            </div>
        </div>


        <div class="package_contain_1">
            <h1><span class="solution">Choose</span> your Affordable <span class="solution">Package</span>.</h1>
            <p>Find your perfect package, balancing comfort and budget.</p>
            <div class="image_container_flex">
                <img src="<%= request.getContextPath()%>/images/Rectangle 9.png" alt="Rectangle 9">
                <img src="<%= request.getContextPath()%>/images/Rectangle 10.png" alt="">
                <img src="<%= request.getContextPath()%>/images/Rectangle 11.png" alt="">
                <img src="<%= request.getContextPath()%>/images/Rectangle 12.png" alt="">
            </div>
        </div>


        <div class="how_it_works">
            <h1>How It <span class="solution"> Works</span>?</h1>

            <div class="row_1">
                <div class="rec-">
                    <div class="rec-logo">
                        <img src="<%= request.getContextPath()%>/images/Group 18.png" alt="">
                    </div>
                    <div class="rec-para">
                        <p class="slim_para"> 1. Select Your Destination</p>
                        <p>Choose from a variety of destinations. For instance, if you want to visit Galle in Sri Lanka, we
                            have
                            the perfect package for you.</p>
                    </div>
                </div>


                <div class="rec-">
                    <div class="rec-logo">
                        <img src="<%= request.getContextPath()%>/images/Group 19.png" alt="">
                    </div>
                    <div class="rec-para">
                        <p class="slim_para">2. Choose Your Package:</p>
                        <p>Our packages are designed to accommodate up to 6 people, providing flexibility for families and
                            groups.</p>
                    </div>
                </div>
            </div>


            <div class="row_1">
                <div class="rec-">
                    <div class="rec-logo">
                        <img src="<%= request.getContextPath()%>/images/Group 20.png" alt="">
                    </div>
                    <div class="rec-para">
                        <p class="slim_para">3. Complete Details:</p>
                        <p>Each package includes detailed information about the duration of your stay, daily itineraries,
                            and hotel accommodations.</p>
                    </div>
                </div>


                <div class="rec-">
                    <div class="rec-logo">
                        <img src="<%= request.getContextPath()%>/images/Group 21.png" alt="">
                    </div>
                    <div class="rec-para">
                        <p class="slim_para"> 4. Hassle-Free Booking:</p>
                        <p>Once you book a package, there's no need to worry about hotel reservations. We handle all the
                            bookings for you, ensuring a smooth and worry-free experience.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="why_choose">
            <h1>Why Choose <span class="solution">travelEase</span>?</h1>
            <div class="same_line">
                <div class="rec_2">
                    <img src="<%= request.getContextPath()%>/images/Group 22.png" alt="">
                    <p>Curated Experiences</p>
                    <p class="small_para"> Our team handpicks the best hotels and activities to ensure you have a memorable
                        trip.</p>
                </div>
                <div class="rec_2">
                    <img src="<%= request.getContextPath()%>/images/Group 22.png" alt="">
                    <p>Curated Experiences</p>
                    <p class="small_para"> Our team handpicks the best hotels and activities to ensure you have a memorable
                        trip.</p>
                </div>
                <div class="rec_2">
                    <img src="<%= request.getContextPath()%>/images/Group 22.png" alt="">
                    <p>Curated Experiences</p>
                    <p class="small_para"> Our team handpicks the best hotels and activities to ensure you have a memorable
                        trip.</p>
                </div>
            </div>
        </div>

        <div class="book_trip">
            <h1>Book Your <span class="solution">Dream Trip Today</span>!</h1>
            <p>Experience the ease of travel planning with TravelEase. Browse our packages, select your destination, and let us take care of the rest. Your perfect journey starts here.</p>
            <a href="./package.jsp" class="book-button">Book Now</a>
        </div>


        <div class="footer_content_">
            <div class="vertical-line"></div>
            <div class="vertical-line"></div>
        </div>

        <div class="footer_content_1">
            <p>RAD Group Assignment</p>
            <p>Group - M</p>
            <p>BIMSARA L.G.</p>
            <p>NETHMINA V.A.K.M.</p>
            <p>SURANJAYA K.D.V.</p>
            <p>NILAKSHAN R.</p>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </body>

</html>