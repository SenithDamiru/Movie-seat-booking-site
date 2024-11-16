<%-- 
    Document   : editmovie
    Created on : Nov 13, 2024, 7:36:34 PM
    Author     : senithdamiru
--%>

<%@page import="newpackage.DatabaseConnection"%>
<%@page import="newpackage.movies"%>





<%@ page import="java.sql.Date" %>
<%@page import="newpackage.moviesDAO"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
    int movie_id = Integer.parseInt(request.getParameter("movie_id"));
    
    moviesDAO mvd = new moviesDAO(DatabaseConnection.getConnection());
    movies movie = mvd.getSingleMovie(movie_id);
    request.setAttribute("editMovie", movie);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
            <h2>Edit Movies</h2>
            
            
            <form method="POST" action="EditMovieServlet">
                <input type="int" name="movie_id" placeholder="movie_id" value="${editMovie.movie_id}" required>
                
                <input type="text" name="title" placeholder="Title" value="${editMovie.title}" required>
                
                <input type="text" name="description" placeholder="Description" value="${editMovie.description}" required>
                
                <input type="int" name="duration" placeholder="Duration (minutes)" value="${editMovie.duration}" required>
                
                <input type="double" name="rating" placeholder="Rating" value="${editMovie.rating}" required>
                
                <input type="date" name="release_date" placeholder="Released Date" value="${editMovie.release_date}" required>
                
                <input type="text" name="genre" placeholder="Genre" value="${editMovie.genre}" required>
               
                <input type="text" name="imageURL" placeholder="Image URL" value="${editMovie.imageURL}" required> 
                
                <input type="text" name="trailerURL" placeholder="Trailor URL" value="${editMovie.trailerURL}" required> 
                
                <button type="submit">Edit Movie</button>
            </form>
            
        
        
    </body>
</html>
