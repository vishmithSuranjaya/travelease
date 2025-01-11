<%-- 
    Document   : Register
    Created on : Aug 9, 2024, 8:15:58 AM
    Author     : nilakshanraveendran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>



<body>
    <div class="register__content">
        <div class="register__boxx">
            <div class="register_content_1">
                <p><span class="solution">Travel management system</span></p>
            </div>

            <img src="<%= request.getContextPath() %>/images/Vector.png" alt="" class="logo">
            <p class="f-content"><span class="solution">START FOR FREE</span></p>
            <h1>Create new account.</h1>
            <p>Already a Member?<a href="" class="non_class"><span class="solution">Login</span></a></p>

            <form action="registration_inc.jsp" method="post">
                
                <table>
                <tr>
                    <td>First name</td>
                    <td>Last name</td>
                </tr>
                <tr>
                    <td><input type="text" name="fname" class="input_box_2" placeholder="Enter your first name"></td>
                    <td><input type="text" name="lname" class="input_box_2" placeholder="Enter your Last name"></td>
                </tr>
            </table>
            <table class="table_2">
                <tr>
                    <td>NIC</td>
                </tr>
                <tr>
                    <td><input type="text" name="nic" placeholder="Enter your Phone number"  class="input_box_3" ></td>
                </tr>
                
                <tr>
                    <td>Phone no</td>
                </tr>
                <tr>
                    <td><input type="text" name="phoneNo" placeholder="Enter your Phone number"  class="input_box_3" ></td>
                </tr>


                <tr>
                    <td>Address</td>
                </tr>
                <tr>
                    <td><input type="text" name="address" placeholder="Enter your Address"  class="input_box_3" ></td>
                </tr>


                <tr>
                    <td>Email</td>
                </tr>
                <tr>
                    <td><input type="email" name="email" placeholder="Enter your Email"  class="input_box_3" ></td>
                </tr>


                <tr>
                    <td>Password</td>
                </tr>
                <tr>
                    <td><input type="password"name="password" placeholder="Enter your Password"  class="input_box_3" ></td>
                </tr>


            </table>
            <input type="submit" class="register-button-3" value="Register">
            </form>
        </div>
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
