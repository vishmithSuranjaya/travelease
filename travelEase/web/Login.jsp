<%-- Document : Login Created on : Aug 8, 2024, 5:27:48 PM Author : nilakshanraveendran --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
        <div class="login__content">
            <div class="login__boxx">
                <div class="login_content_1">
                    <p><span class="solution">Travel management system</span></p>
                </div>

                <img src="<%= request.getContextPath()%>/images/Vector.png" alt="" class="logo">
                <h1>Welcome</h1>
                <p>"<span class="solution">Welcome to </span>TravelEase<span class="solution">! Log in to plan your perfect
                        journey.</span>"</p>

                        <form action="login_inc.jsp" method="post">
                    <table>
                        <tr>
                            <td>Email</td>
                        </tr>
                        <tr>
                            <td><input type="email" name="email" class="input_boxx" placeholder="Email"></td>
                        </tr>

                        <tr>
                            <td>Password</td>
                        </tr>
                        <tr>
                            <td><input type="password" name="password" placeholder="password"></td>
                        </tr>
                    </table>


                    <div class="same__line">
                        <p class="align_cont"><button class="re_btn"></button>Remember me</p>
                        <a href="" class="for_p"><span class="solution">forgot your password?</span></a>
                    </div>




                    <input type="submit" class="login-button-2" value="Login">
                    <p class="mar_top">Don't have an account?  <a href="Register.jsp" class="non_class"><span class="solution">Register here</span></a></p>
            </div>
        </form>
    </div>





    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const button = document.querySelector(".re_btn");

            button.addEventListener("click", function () {
                this.classList.toggle("toggled");
            });
        });
    </script>
</body>

</html>