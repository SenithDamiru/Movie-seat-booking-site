<%@page import="java.sql.SQLException"%>
<%@page import="newpackage.DatabaseConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="newpackage.movies"%>
<%@page import="newpackage.moviesDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.SimpleDateFormat" %>

<%
    // Fetch movie_id from the query string
    String movieIdParam = request.getParameter("movie_id");
    if (movieIdParam == null || movieIdParam.isEmpty()) {
        response.sendRedirect("index.jsp");
        return;
    }

    int movieId = Integer.parseInt(movieIdParam);

    // Fetch connection from DatabaseConnection utility (assumed)
    Connection con = null;
    try {
        con = DatabaseConnection.getConnection();  // Get the database connection
        
        // Create an instance of moviesDAO with the connection
        moviesDAO moviesDAO = new moviesDAO(con);
        
        // Fetch movie details using the DAO
        movies movie = moviesDAO.getMovieById(movieId);

        // If the movie is not found, redirect to an error page
        if (movie == null) {
            response.sendRedirect("error.html");
            return;
        }

        // If movie is found, continue rendering the form
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Movie</title>
</head>
<body>
    <h1>Edit Movie</h1>
    <form action="EditMovieServlet" method="post">
        <!-- Movie ID is hidden but still passed -->
        <input type="hidden" name="movie_id" value="<%= movie.getMovie_id() %>" />
        
        <label>Title:</label>
        <input type="text" name="title" value="<%= movie.getTitle() %>" required /><br/>

        <label>Description:</label>
        <textarea name="description" type="text" required><%= movie.getDescription() %></textarea><br/>

        <label>Duration (minutes):</label>
        <input type="int" name="duration" value="<%= movie.getDuration() %>" required /><br/>

        <label>Rating:</label>
        <input type="double" step="0.1" name="rating" value="<%= movie.getRating() %>" required /><br/>

        <label>Release Date:</label>
        <input type="date" name="release_date" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(movie.getReleaseDate()) %>" required /><br/>

        <label>Genre:</label>
        <input type="text" name="genre" value="<%= movie.getGenre() %>" required /><br/>

        <label>Image URL:</label>
        <input type="text" name="imageURL" value="<%= movie.getImageURL() %>" required /><br/>

        <label>Trailer URL:</label>
        <input type="text" name="trailerURL" value="<%= movie.getTrailerURL() %>" required /><br/>

        <button type="submit">Update Movie</button>
    </form>
</body>
</html>
<%
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("thank.html");  // Redirect on error
    } finally {
        if (con != null) {
            try {
                con.close();  // Ensure the connection is closed after use
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>