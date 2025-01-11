/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author KDV SURANJAYA
 */
public class dbConnector {
    private static final String DRIVER="com.mysql.jdbc.Driver";
    private static final String URL ="jdbc:mysql://localhost:3306/travelease";
    private static final String USER = "root";
    private static final String PASS = "";
    
    public static Connection getConnection(){
      Connection con = null;
      
        try {
            Class.forName(DRIVER);
            con = DriverManager.getConnection(URL,USER,PASS);  
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(dbConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
}
