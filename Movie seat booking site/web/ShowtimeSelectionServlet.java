/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


// Define the servlet URL mapping
@WebServlet("/selectShowtime")
public class ShowtimeSelectionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC connection variables
    private static final String DB_URL = "jdbc:mysql://localhost:3306/filmhub";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "password";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve parameters from the request
        String movieTitle = request.getParameter("movieTitle");
        String theater = request.getParameter("theater");
        String showtime = request.getParameter("showtime");

        // Database insertion
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String query = "INSERT INTO showtime_selections (movie_title, theater, showtime) VALUES (?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, movieTitle);
            pstmt.setString(2, theater);
            pstmt.setString(3, showtime);

            // Execute the query
            int rows = pstmt.executeUpdate();

            // Provide a response
            if (rows > 0) {
                response.getWriter().write("Showtime successfully selected for " + movieTitle + ".");
            } else {
                response.getWriter().write("Failed to select showtime. Please try again.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Database error: " + e.getMessage());
        }
    }
}

