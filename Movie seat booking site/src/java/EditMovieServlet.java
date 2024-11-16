/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import newpackage.DatabaseConnection;
import newpackage.movies;
import newpackage.moviesDAO;

/**
 *
 * @author senithdamiru
 */
public class EditMovieServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditMovieServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditMovieServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    Connection con = null;
    try {
        con = DatabaseConnection.getConnection();  // Get the database connection

        // Parse the form data
        int movie_id = Integer.parseInt(request.getParameter("movie_id"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        int duration = Integer.parseInt(request.getParameter("duration"));
        double rating = Double.parseDouble(request.getParameter("rating"));
        String genre = request.getParameter("genre");
        String imageURL = request.getParameter("imageURL");
        String trailerURL = request.getParameter("trailerURL");

        // Parse the release date (string from form to java.util.Date)
        String releaseDateStr = request.getParameter("release_date");
        java.util.Date releaseDateUtil = new SimpleDateFormat("yyyy-MM-dd").parse(releaseDateStr);

        // Convert java.util.Date to java.sql.Date (necessary for SQL operations)
        java.sql.Date releaseDateSql = new java.sql.Date(releaseDateUtil.getTime());

        // Create the movie object
        movies movie = new movies(movie_id, title, description, duration, rating, releaseDateSql, genre, imageURL, trailerURL);

        // Instantiate moviesDAO with the connection
        moviesDAO moviesDAO = new moviesDAO(con);

        // Update the movie in the database
        boolean isUpdated = moviesDAO.editMovieInfo(movie);

        if (isUpdated) {
            response.sendRedirect("Movies.jsp");  // If update is successful, redirect to Movies.jsp
        } else {
            response.sendRedirect("error.jsp");  // If update fails, redirect to an error page
        }
    } catch (Exception e) {
        Logger.getLogger(EditMovieServlet.class.getName()).log(Level.SEVERE, null, e);
        response.sendRedirect("error.jsp");  // If an exception occurs, redirect to error.jsp
    }
}


    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
