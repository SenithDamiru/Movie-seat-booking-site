
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
    
    
}
