<%-- 
    Document   : userProfile_inc
    Created on : Jul 25, 2024, 8:53:31 AM
    Author     : KDV  SURANJAYA
--%>

<%@page import="app.classes.dbConnector"%>
<%@page import="app.classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //test 01 comment
    //getting user inputs
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String phoneNo = request.getParameter("phoneNo");
    String address = request.getParameter("addres");
    String email = request.getParameter("email");
    //int id = (Integer)session.getAttribute("user_id");
    
    String password=request.getParameter("password");
    int id = 90871086;
    //object of the user class
    User user = new User(id,fname,lname,address,email,phoneNo);
    String action = request.getParameter("userAccount");

    if ("Update Account".equals(action)) {
        if(user.updateAccount(dbConnector.getConnection())){
          response.sendRedirect("user_profile.jsp?s=1");
        }else{
          out.println("error");
        }
    } else if ("Delete Account".equals(action)) {
        if(user.deleteAccount(dbConnector.getConnection())){
          response.sendRedirect("user_profile.jsp?s=2");
        }
    } else if ("Log Out".equals(action)) {
        if(user.updateAccount(dbConnector.getConnection())){
          response.sendRedirect("user_profile.jsp?s=3");
        }
    }else{
      out.println("something wrong");
    }


%>

<html>
    <body>
        <p>hello</p>
    </body>
</html>
