/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static javax.swing.UIManager.getInt;


/**
 *
 * @author senithdamiru
 */
@WebServlet(urlPatterns = {"/movieservlet"})



public class movieservlet extends HttpServlet {

    private final movieDAO movieDAO = new movieDAO();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet movieservlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet movieservlet at " + request.getContextPath() + "</h1>");
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
        try {
            List<moviemodel> movies = movieDAO.getAllMovies();  // Fetch all movies from the database
            request.setAttribute("movies", movies);  // Set movies as a request attribute to pass to JSP
            RequestDispatcher dispatcher = request.getRequestDispatcher("movies.jsp");  // Forward to movies.jsp
            dispatcher.forward(request, response);
        } catch (IOException | ServletException e) {
            throw new ServletException("Error retrieving movie list", e);  // Handle exceptions
        }
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
    String title = request.getParameter("title");
    String description = request.getParameter("description");
    int duration = Integer.parseInt(request.getParameter("duration"));
    double rating = Double.parseDouble(request.getParameter("rating"));
    java.sql.Date releaseDate = java.sql.Date.valueOf(request.getParameter("release_date"));
    String genre = request.getParameter("genre");
    String imageUrl = request.getParameter("image_url");
    String trailerUrl = request.getParameter("trailer_url");

    moviemodel movie;
        movie = new moviemodel(duration, title, description, getInt("duration"), rating, releaseDate, genre, imageUrl, trailerUrl);
    boolean result = movieDAO.addMovie(movie);

    if (result) {
        response.sendRedirect(request.getContextPath() + "/MovieServlet");
    } else {
        response.sendRedirect("error.jsp");
    }
}

    
    
    
    
    /*@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("delete".equals(action)) {
            // Delete the movie
            int movieId = Integer.parseInt(request.getParameter("movie_id"));
            try {
                movieDAO.deleteMovie(movieId);
                response.sendRedirect("movieservlet");  // Redirect to refresh the movie list
            } catch (IOException e) {
                throw new ServletException("Error deleting movie", e);
            }
        } else {
            // Add a new movie
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            int duration = Integer.parseInt(request.getParameter("duration"));
            double rating = Double.parseDouble(request.getParameter("rating"));
            java.sql.Date releaseDate = java.sql.Date.valueOf(request.getParameter("release_date"));
            String genre = request.getParameter("genre");
            String imageUrl = request.getParameter("image_url");
            String trailerUrl = request.getParameter("trailer_url");

            moviemodel newMovie = new moviemodel();
            newMovie.setTitle(title);
            newMovie.setDescription(description);
            newMovie.setDuration(duration);
            newMovie.setRating(rating);
            newMovie.setReleaseDate(releaseDate);
            newMovie.setGenre(genre);
            newMovie.setImageUrl(imageUrl);
            newMovie.setTrailerUrl(trailerUrl);

            try {
                movieDAO.addMovie(newMovie);
                response.sendRedirect("movieservlet");  // Redirect to refresh the movie list
            } catch (IOException e) {
                throw new ServletException("Error adding movie", e);
            }
        }
    }*/
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
 

  
    
        @Override
    public void destroy() {
        // Optionally clean up resources like closing database connections if necessary
        try {
            if (movieDAO != null) {
                movieDAO.close();  // Assuming you have a close method in MovieDAO
            }
        } catch (Exception e) {
        }
    }

   
}


