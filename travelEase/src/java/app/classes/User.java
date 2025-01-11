/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.security.util.PendingException;

/**
 *
 * @author KDV SURANJAYA
 */
public class User {
    private int id;
    private String fname;
    private String lname;
    private String address;
    private String email;
    private String phoneNo;
    private String password;
    private String role;
    public User() {
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User(int id, String fname, String lname, String address, String email, String phoneNo, String password, String role) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.address = address;
        this.email = email;
        this.phoneNo = phoneNo;
        this.password = password;
        this.role = role;
    }

    
    
    public User(int id,String fname, String lname, String address, String email, String phoneNo) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.address = address;
        this.email = email;
        this.phoneNo = phoneNo;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
    public boolean register(Connection con){
        try {
            String query = "INSERT INTO customer(id,fname,lname,email,address,phoneNo,password,role) VALUES(?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setInt(1, this.id);
            pstmt.setString(2, this.fname);
            pstmt.setString(3, this.lname);
            pstmt.setString(4, this.email);
            pstmt.setString(5, this.address);
            pstmt.setString(6, this.phoneNo);
            pstmt.setString(7, this.password);
            pstmt.setString(8, this.role);
            return pstmt.executeUpdate()>0;
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    
    public boolean Login(Connection con){
      
        try {
            String query = "SELECT * FROM customer WHERE email=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1,this.email);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
              String dbPwd = rs.getString("password");
              if(dbPwd.equals(this.password)){
                 int user_Id = rs.getInt("id");
                 String role = rs.getString("role");
                 this.setId(user_Id);
                 this.setRole(role);
                 return true;
              }else{
                 return false;
              }
            }else{
               return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
   
    
    public boolean updateAccount(Connection con){
     String query = "UPDATE customer SET fname=?,lname=?,email=?,address=?,phoneNo=?,password=? where id=?";
        try {
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1,this.fname);
            pstmt.setString(2,this.lname);
            pstmt.setString(3,this.address);
            pstmt.setString(4,this.email);
            pstmt.setString(5,this.phoneNo);
            pstmt.setString(6,this.password);
            pstmt.setInt(7, this.id);
            return pstmt.executeUpdate()>0;
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        
    }
    
    public boolean deleteAccount(Connection con){
     String query = "DELETE FROM customer WHERE id=?";
     
        try {
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setInt(1,this.id);
            return pstmt.executeUpdate()>0;
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
