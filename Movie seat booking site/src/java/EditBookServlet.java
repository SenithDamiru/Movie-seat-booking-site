/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
public class EditBookServlet extends HttpServlet {

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
            out.println("<title>Servlet EditBookServlet</title>");
            out.println("</head>");
            out.println("<body>");
            
            //fetch data from the edit form
            int movie_id = Integer.parseInt(request.getParameter("movie_id"));
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            int duration = Integer.parseInt(request.getParameter("duration"));
            double rating = Double.parseDouble(request.getParameter("rating"));
            
            String genre = request.getParameter("genre");
            String imageURL = request.getParameter("imageURL");
            String trailerURL = request.getParameter("trailerURL");
            

try {
    String dateString = request.getParameter("release_date");
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); // Adjust the pattern to match your date format
    Date release_date = (Date) format.parse(dateString);
    movies movie = new movies();
     movie.setReleaseDate(release_date);
    
} catch (Exception e) {
    e.printStackTrace();
    // Handle the error
}


        movies movie = new movies();
        movie.setTitle(title);
        movie.setDescription(description);
        movie.setDuration(duration);
        movie.setGenre(genre);
       
        movie.setRating(rating);
        movie.setImageURL(imageURL);
        movie.setTrailerURL(trailerURL);
        movie.setMovie_id(movie_id);
        
        moviesDAO mvdao = new moviesDAO(DatabaseConnection.getConnection());
        boolean success = mvdao.editMovieInfo(movie);
        if(success){
            out.println("edited successfully");
        }else{
            out.println("something wrong");
        }
            
            
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
        processRequest(request, response);
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
