/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;

/**
 *
 * @author KDV SURANJAYA
 */
public class Bookings {
    private String name;
    private String address;
    private String email;
    private String phoneNo;
    private String bookingDate;
    private String loc_id;

    public Bookings(String name, String address, String email, String phoneNo, String bookingDate,String id) {
        this.name = name;
        this.address = address;
        this.email = email;
        this.phoneNo = phoneNo;
        this.bookingDate = bookingDate;
        this.loc_id = id;
    }

    public Bookings() {
    }
    
    //validating user inputs
    public static boolean validateName(String name) {
        String NAME_REGEX = "^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";
        Pattern pattern = Pattern.compile(NAME_REGEX);
        return pattern.matcher(name).matches();
    }
    
    public static boolean validatePhoneNo(String phoneNo) {
        String NAME_REGEX = "^\\d{10}$";
        Pattern pattern = Pattern.compile(NAME_REGEX);
        return pattern.matcher(phoneNo).matches();
    }
    
    public static boolean validateAddres(String address) {
        String NAME_REGEX = "^[a-zA-Z0-9\\s\\.,\\-'#]+$";
        Pattern pattern = Pattern.compile(NAME_REGEX);
        return pattern.matcher(address).matches();
    }
    
    public static boolean validateEmail(String email) {
        String NAME_REGEX = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
        Pattern pattern = Pattern.compile(NAME_REGEX);
        return pattern.matcher(email).matches();
    }
    
    
    public boolean confirmBooking(Connection con){
        String query = "INSERT INTO booking(name,address,email,phoneNo,bookingDate,loc_id) VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, this.name);
            pstmt.setString(2, this.address);
            pstmt.setString(3, this.email);
            pstmt.setString(4, this.phoneNo);
            pstmt.setString(5, this.bookingDate);
            pstmt.setString(6, this.loc_id);
            return pstmt.executeUpdate()>0;
        } catch (SQLException ex) {
            Logger.getLogger(Bookings.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }    
    }
}
