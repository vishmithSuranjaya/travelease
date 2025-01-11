<%-- 
    Document   : registration_inc
    Created on : Aug 7, 2024, 6:47:18 PM
    Author     : KDV  SURANJAYA
--%>

<%@page import="app.classes.dbConnector"%>
<%@page import="app.classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
   int id = Integer.parseInt(request.getParameter("nic"));
   String fname = request.getParameter("fname");
   String lname = request.getParameter("lname");
   String phoneNo = request.getParameter("phoneNo");
   String address = request.getParameter("address");
   String email = request.getParameter("email");
   String password = request.getParameter("password");
   String role = "customer";
  User user = new User(id, fname, lname, address, email, phoneNo,password,role);
  if(user.register(dbConnector.getConnection())){
     response.sendRedirect("index.jsp?s=2");
  }else{
     response.sendRedirect("index.jsp?s=3");
  }

%>
