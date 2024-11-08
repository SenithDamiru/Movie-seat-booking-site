
import java.sql.Date;

public class moviemodel {
    private int movieId;
    private String title;
    private String description;
    private int duration;
    private double rating;
    private Date releaseDate;
    private String genre;

    // Constructor
    public moviemodel(int movieId, String title, String description, int duration, double rating, Date releaseDate, String genre, String imageURL, String trailerURL) {
        this.movieId = movieId;
        this.title = title;
        this.description = description;
        this.duration = duration;
        this.rating = rating;
        this.releaseDate = releaseDate;
        this.genre = genre;
    }

        // Getters and Setters for each field
    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

 
    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getImageUrl(String imageUrl) {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
    }

    public String getTrailerUrl(String trailerUrl) {
        return trailerUrl;
    }

    public void setTrailerUrl(String trailerUrl) {
    }

    String getImageURL() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    String getTrailerURL() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    int getId() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}





