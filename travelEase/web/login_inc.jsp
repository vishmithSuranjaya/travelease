<%-- 
    Document   : login_inc
    Created on : Aug 7, 2024, 6:07:12 PM
    Author     : KDV  SURANJAYA
--%>

<%@page import="app.classes.dbConnector"%>
<%@page import="app.classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
  String email = request.getParameter("email");
  String password = request.getParameter("password");
  
  User user = new User(email, password);
  if(user.Login(dbConnector.getConnection())){
    int user_id = user.getId();
    session.setAttribute("user_id", user.getId());
     if(user.getRole().equals("admin")){
         response.sendRedirect("./admin.jsp");
     }else{
         response.sendRedirect("index.jsp?s=1");
     }
  }else{
    response.sendRedirect("index.jsp?s=0");
  }
 
%>