package app.classes;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PackageDAO {
    public List<Package> getAllPackages() {
        List<Package> packages = new ArrayList<>();
        Connection con = dbConnector.getConnection();
        if (con == null) {
            Logger.getLogger(PackageDAO.class.getName()).log(Level.SEVERE, "Database connection is null");
            return packages;
        }
        String query = "SELECT * FROM packages";
        try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                Package pkg = new Package();
                pkg.setTown(rs.getString("town"));
                pkg.setTitle(rs.getString("title"));
                pkg.setNoPeople(rs.getInt("no_people"));
                pkg.setDescription(rs.getString("description"));
                pkg.setAddress(rs.getString("address"));
                //pkg.setImage(rs.getString("image"));
                pkg.setLoc_id(rs.getString("loc_id"));
                packages.add(pkg);
            }
            Logger.getLogger(PackageDAO.class.getName()).log(Level.INFO, "Packages retrieved: " + packages.size());
        } catch (SQLException ex) {
            Logger.getLogger(PackageDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(PackageDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return packages;
    }
}
