package newpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/movie_booking?useSSL=false&serverTimezone=UTC"; 
    private static final String USERNAME = "root"; 
    private static final String PASSWORD = "SLTechieBoy@2005"; 

    // Method to establish a connection to the database
    public static Connection getConnection() {
        Connection con = null;
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish the connection
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("Connection to the database was successful!");
        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver not found. Add it to the library.");
        } catch (SQLException e) {
            System.err.println("Connection to database failed. Check URL, username, or password.");
        }
        return con;
    }
}
