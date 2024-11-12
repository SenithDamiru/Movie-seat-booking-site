
package newpackage;

import java.sql.Date;

public class movies {
    private int movie_id;
    private String title;
    private String description;
    private int duration;
    private double rating;
    private Date release_date;
    private String genre;
    private String imageURL;
    private String trailerURL; 

    public movies() {
    }

    public movies(int movie_id, String title, String description, int duration, double rating, Date release_date, String genre, String imageURL, String trailerURL) {
        this.movie_id = movie_id;
        this.title = title;
        this.description = description;
        this.duration = duration;
        this.rating = rating;
        this.release_date = release_date;
        this.genre = genre;
        this.imageURL = imageURL;
        this.trailerURL = trailerURL;
    }

    public movies(String title, String description, int duration, double rating, Date release_date, String genre, String imageURL, String trailerURL) {
        this.title = title;
        this.description = description;
        this.duration = duration;
        this.rating = rating;
        this.release_date = release_date;
        this.genre = genre;
        this.imageURL = imageURL;
        this.trailerURL = trailerURL;
    }

    public Date getRelease_date() {
        return release_date;
    }

    public String getTrailerURL() {
        return trailerURL;
    }

    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }

    public void setTrailerURL(String trailerURL) {
        this.trailerURL = trailerURL;
    }

    public movies(Date release_date, String trailerURL) {
        this.release_date = release_date;
        this.trailerURL = trailerURL;
    }

    public int getMovie_id() {
        return movie_id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public int getDuration() {
        return duration;
    }

    public double getRating() {
        return rating;
    }

    public Date getReleaseDate() {
        return release_date;
    }

    public String getGenre() {
        return genre;
    }

    public String getImageURL() {
        return imageURL;
    }

    public String getTrailorURL() {
        return trailerURL;
    }

    public void setMovie_id(int movie_id) {
        this.movie_id = movie_id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public void setReleaseDate(Date release_date) {
        this.release_date = release_date;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public void setTrailorURL(String trailerURL) {
        this.trailerURL = trailerURL;
    }

    @Override
    public String toString() {
        return "movies{" + "movie_id=" + movie_id + ", title=" + title + ", description=" + description + ", duration=" + duration + ", rating=" + rating + ", release_date=" + release_date + ", genre=" + genre + ", imageURL=" + imageURL + ", trailerURL=" + trailerURL + '}';
    }
    
    
}
