/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import newpackage.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import newpackage.movies;
import newpackage.moviesDAO;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author senithdamiru
 */
public class addmovieservlet extends HttpServlet {

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
            out.println("<title>Servlet addmovieservlet</title>");
            out.println("</head>");
            out.println("<body>");
            
            

    // Fetch data from the form
String title = request.getParameter("title");
String description = request.getParameter("description");
String genre = request.getParameter("genre");
String imageURL = request.getParameter("imageURL");
String trailerURL = request.getParameter("trailerURL");

// Convert `duration` and `rating` to integers
int duration = 0;
double rating = 0;

try {
    if (request.getParameter("duration") != null) {
        duration = Integer.parseInt(request.getParameter("duration"));
    }
    if (request.getParameter("rating") != null) {
        rating = Double.parseDouble(request.getParameter("rating"));
    }
} catch (NumberFormatException e) {
    System.out.println("Invalid number format for duration or rating");
}

// Convert `release_date` to a java.sql.Date object
java.sql.Date release_date = null;
try {
    String releaseDateStr = request.getParameter("release_date");
    if (releaseDateStr != null) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); // Adjust the format as needed
        java.util.Date parsedDate = dateFormat.parse(releaseDateStr); // Parse into java.util.Date
        release_date = new java.sql.Date(parsedDate.getTime()); // Convert java.util.Date to java.sql.Date
    }
} catch (ParseException e) {
    System.out.println("Invalid date format for release_date");
}

// Create the `movies` object with converted values
movies mv = new movies(title, description, duration, rating, release_date, genre, imageURL, trailerURL);

            try{
                
            moviesDAO mvdao = new moviesDAO(DatabaseConnection.getConnection());
            if(mvdao.addMovie(mv)){
                response.sendRedirect("Movies.jsp");
             }else{
                out.print("something wrong");
            }
            }catch(Exception e){
                e.printStackTrace();
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
