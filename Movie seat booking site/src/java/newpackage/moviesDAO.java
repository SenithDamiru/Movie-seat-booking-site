
package newpackage;
import java.sql.*;

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
}
