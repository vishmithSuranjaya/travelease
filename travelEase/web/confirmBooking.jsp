 <%-- 
    Document   : confirmBooking
    Created on : Jul 24, 2024, 9:50:51 PM
    Author     : KDV  SURANJAYA
--%>

<%@page import="app.classes.dbConnector"%>
<%@page import="app.classes.Bookings"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    

  String fname = request.getParameter("fname");
  String phoneNo = request.getParameter("phoneNo");
  String bookingDate = request.getParameter("bookingDate");
  String address = request.getParameter("address");
  String email = request.getParameter("email");
  String loc_id = request.getParameter("loc_id");
  
   Bookings booking = new Bookings(fname,address,email,phoneNo,bookingDate,loc_id);
   
   if(!booking.validateName(fname)){
      response.sendRedirect("confirmPackage_form.jsp?s=2");
   }else if(!booking.validatePhoneNo(phoneNo)){
      response.sendRedirect("confirmPackage_form.jsp?s=2");
   }else if(!booking.validateAddres(address)){
       response.sendRedirect("confirmPackage_form.jsp?s=2");
   }else if(!booking.validateEmail(email)){
       response.sendRedirect("confirmPackage_form.jsp?s=2");
   }else{
    if(booking.confirmBooking(dbConnector.getConnection())){
        response.sendRedirect("confirmPackage_form.jsp?s=1");
    }else{
        response.sendRedirect("confirmPackage_form.jsp?s=0");
    }
   }

%>
