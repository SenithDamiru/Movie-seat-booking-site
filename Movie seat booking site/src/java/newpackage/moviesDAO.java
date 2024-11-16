
package newpackage;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

public class moviesDAO {
    Connection con;

    public moviesDAO(Connection con) {
        this.con = con;
    }

    
    
    // add movie
    public boolean addMovie(movies movie){
        boolean test = false;
        try{
            String query = "insert into movies( title,  description, duration,  rating,  release_date,  genre,  imageURL, trailerURL) values(?,?,?,?,?,?,?,?)";
            
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, movie.getTitle());
            pst.setString(2, movie.getDescription());
            pst.setInt(3, movie.getDuration());
            pst.setDouble(4, movie.getRating());
            pst.setDate(5, movie.getReleaseDate());
            pst.setString(6, movie.getGenre());
            pst.setString(7, movie.getImageURL());
            pst.setString(8, movie.getTrailorURL());
            
            
              pst.executeUpdate();
            test = true;
            
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return test;
    }
    
    // retrieve movie data from db
    
    public List<movies> getAllMovies(){
        List<movies> movie = new ArrayList<>();
        
        try{
            String query = "select * from movies";
            PreparedStatement pt = this.con.prepareStatement(query);
            
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int movie_id = rs.getInt("movie_id");
                String title = rs.getString("title");
                String description = rs.getString("description");
                int duration = rs.getInt("duration");
                double rating = rs.getDouble("rating");
                Date release_date = rs.getDate("release_date");
                String genre = rs.getString("genre");
                String imageURL = rs.getString("imageURL");
                String trailerURL = rs.getString("trailerURL");
                
                movies row = new movies(movie_id, title,  description, duration,  rating,  release_date,  genre,  imageURL, trailerURL);
                movie.add(row);
                
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return  movie;
    }
    
 /*   //get single movie method
    public movies getSingleMovie(int movie_id){
        
        movies mv = null;
        
        try{
            String query = "select * from movies where movie_id =?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(8, movie_id);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int mid = rs.getInt("movie_id");
                String Title = rs.getString("title");
                String Description = rs.getString("description");
                int Duration = rs.getInt("duration");
                double Rating = rs.getDouble("rating");
                Date Release_date = rs.getDate("release_date");
                String Genre = rs.getString("genre");
                String ImageURL = rs.getString("imageURL");
                String TrailerURL = rs.getString("trailerURL");
                
                mv = new movies(mid, Title,  Description, Duration,  Rating,  Release_date,  Genre,  ImageURL, TrailerURL);
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return mv;
    }
    
    */
    
    //edit book information

public boolean editMovieInfo(movies movie){
    boolean test = false;
    try{
        String query = "update movies set title=?, description=?, duration=?, rating=?, release_date=?, genre=?, imageURL=?,trailerURL=? where movie_id=? ";
        PreparedStatement pt = this.con.prepareStatement(query);
         pt.setString(1, movie.getTitle());
         pt.setString(2, movie.getDescription());
         pt.setInt(3, movie.getDuration());
         pt.setDouble(4, movie.getRating());
         pt.setDate(5, movie.getReleaseDate());
         pt.setString(6, movie.getGenre());
         pt.setString(7, movie.getImageURL());
         pt.setString(8, movie.getTrailorURL());
         pt.setInt(9, movie.getMovie_id());
         
         pt.executeUpdate();
         test = true;
        
    }catch(Exception e){
        e.printStackTrace();
    }
    return test;
}
    

//chatgpt
public movies getMovieById(int movie_id) {
    
    movies movie = null;

    try {
        String query = "SELECT * FROM movies WHERE movie_id = ?";
    PreparedStatement stmt = this.con.prepareStatement(query);
          
        // Set the parameter in the query
        stmt.setInt(1, movie_id);

        // Execute the query
        ResultSet rs = stmt.executeQuery();

        // Check if a result exists
        if (rs.next()) {
            // Create a Movie object using the result data
            movie = new movies(
                rs.getInt("movie_id"),
                rs.getString("title"),
                rs.getString("description"),
                rs.getInt("duration"),
                rs.getDouble("rating"),
                rs.getDate("release_date"),
                rs.getString("genre"),
                rs.getString("imageURL"),
                rs.getString("trailerURL")
            );
        } else {
            System.out.println("No movie found with ID: " + movie_id);
        }

    } catch (SQLException e) {
        // Log the exception for debugging
        System.err.println("Error fetching movie by ID: " + e.getMessage());
        e.printStackTrace();
    } catch (Exception e) {
        System.err.println("Unexpected error: " + e.getMessage());
        e.printStackTrace();
    }

    return movie; // Return null if no movie is found
}



 // Method to delete a movie by its ID
    public boolean deleteMovie(int movie_id) {
        boolean isDeleted = false;
        try {
            String query = "DELETE FROM movies WHERE movie_id = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, movie_id);

            // Execute the delete operation
            int rowsAffected = pst.executeUpdate();

            // If rowsAffected > 0, the movie was deleted successfully
            if (rowsAffected > 0) {
                isDeleted = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isDeleted;
    }

    
    
}

