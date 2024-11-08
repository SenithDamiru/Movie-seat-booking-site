

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class movieDAO {
    private final String jdbcURL = "jdbc:mysql://localhost:3306/movie_booking";
    private final String jdbcUsername = "root";
    private final String jdbcPassword = "SLTechieBoy@2005";

    private static final String INSERT_MOVIE_SQL = "INSERT INTO movies (title, description, duration, rating, release_date, genre, imageURL, trailerURL) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String SELECT_MOVIE_BY_ID = "SELECT * FROM movies WHERE movie_id = ?";
    private static final String SELECT_ALL_MOVIES = "SELECT * FROM movies";
    private static final String DELETE_MOVIE_SQL = "DELETE FROM movies WHERE movie_id = ?";
    private static final String UPDATE_MOVIE_SQL = "UPDATE movies SET title = ?, description = ?, duration = ?, rating = ?, release_date = ?, genre = ?, imageURL = ?, trailerURL = ? WHERE movie_id = ?";

   
    /**
     *
     */
   

       public movieDAO() {}

    // Database connection method
    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }

    // Method to add a new movie
    public boolean addMovie(moviemodel movie) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_MOVIE_SQL)) {
            
            preparedStatement.setString(1, movie.getTitle());
            preparedStatement.setString(2, movie.getDescription());
            preparedStatement.setInt(3, movie.getDuration());
            preparedStatement.setDouble(4, movie.getRating());
            preparedStatement.setDate(5, movie.getReleaseDate());
            preparedStatement.setString(6, movie.getGenre());
            preparedStatement.setString(7, movie.getImageURL());
            preparedStatement.setString(8, movie.getTrailerURL());

            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            return false;
        }
    }

    // Method to get a movie by ID
    public moviemodel getMovie(int id) {
        moviemodel movie = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_MOVIE_BY_ID)) {
            
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                movie = new moviemodel(
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
            }
        } catch (SQLException e) {
        }
        return movie;
    }

    // Method to get all movies
    public List<moviemodel> getAllMovies() {
        List<moviemodel> movies = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_MOVIES)) {
            
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                movies.add(new moviemodel(
                        rs.getInt("movie_id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getInt("duration"),
                        rs.getDouble("rating"),
                        rs.getDate("release_date"),
                        rs.getString("genre"),
                        rs.getString("imageURL"),
                        rs.getString("trailerURL")
                ));
            }
        } catch (SQLException e) {
        }
        return movies;
    }

    // Method to update an existing movie
    public boolean updateMovie(moviemodel movie) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_MOVIE_SQL)) {
            
            preparedStatement.setString(1, movie.getTitle());
            preparedStatement.setString(2, movie.getDescription());
            preparedStatement.setInt(3, movie.getDuration());
            preparedStatement.setDouble(4, movie.getRating());
            preparedStatement.setDate(5, movie.getReleaseDate());
            preparedStatement.setString(6, movie.getGenre());
            preparedStatement.setString(7, movie.getImageURL());
            preparedStatement.setString(8, movie.getTrailerURL());
            preparedStatement.setInt(9, movie.getId());

            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            return false;
        }
    }

    // Method to delete a movie
    public boolean deleteMovie(int id) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_MOVIE_SQL)) {
            
            preparedStatement.setInt(1, id);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            return false;
        }
    }

    void close() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}





/*import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class movieDAO {

    private final Connection conn;

    public movieDAO(Connection conn) {
        this.conn = conn;
    }

    movieDAO() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    // CREATE a new movie
    public boolean addMovie(moviemodel movie) {
        String query = "INSERT INTO movies (title, description, duration, rating, release_date, genre, imageURL, trailerURL) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = conn.prepareStatement(query)) {
            statement.setString(1, movie.getTitle());
            statement.setString(2, movie.getDescription());
            statement.setInt(3, movie.getDuration());
            statement.setDouble(4, movie.getRating());
            statement.setDate(5, movie.getReleaseDate());
            statement.setString(6, movie.getGenre());
            statement.setString(7, movie.getImageUrl());
            statement.setString(8, movie.getTrailerUrl());
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            return false;
        }
    }

    // READ all movies
    public List<moviemodel> getAllMovies() {
        List<moviemodel> movies;
        movies = new ArrayList<>();
        String query = "SELECT * FROM movies";
        try (Statement statement = conn.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {

            while (resultSet.next()) {
                moviemodel movie = new moviemodel();
                movie.setMovieId(resultSet.getInt("movie_id"));
                movie.setTitle(resultSet.getString("title"));
                movie.setDescription(resultSet.getString("description"));
                movie.setDuration(resultSet.getInt("duration"));
                movie.setRating(resultSet.getDouble("rating"));
                movie.setReleaseDate(resultSet.getDate("release_date"));
                movie.setCreatedAt(resultSet.getTimestamp("created_at"));
                movie.setGenre(resultSet.getString("genre"));
                movie.setImageUrl(resultSet.getString("imageURL"));
                movie.setTrailerUrl(resultSet.getString("trailerURL"));
                movies.add(movie);
            }
        } catch (SQLException e) {
        }
        return movies;
    }

    // READ a single movie by ID
    public moviemodel getMovieById(int movieId) {
        moviemodel movie = null;
        String query = "SELECT * FROM movies WHERE movie_id = ?";
        try (PreparedStatement statement = conn.prepareStatement(query)) {
            statement.setInt(1, movieId);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    movie = new moviemodel();
                    movie.setMovieId(resultSet.getInt("movie_id"));
                    movie.setTitle(resultSet.getString("title"));
                    movie.setDescription(resultSet.getString("description"));
                    movie.setDuration(resultSet.getInt("duration"));
                    movie.setRating(resultSet.getDouble("rating"));
                    movie.setReleaseDate(resultSet.getDate("release_date"));
                    movie.setCreatedAt(resultSet.getTimestamp("created_at"));
                    movie.setGenre(resultSet.getString("genre"));
                    movie.setImageUrl(resultSet.getString("imageURL"));
                    movie.setTrailerUrl(resultSet.getString("trailerURL"));
                }
            }
        } catch (SQLException e) {
        }
        return movie;
    }

    // UPDATE a movie
    public boolean updateMovie(moviemodel movie) {
        String query = "UPDATE movies SET title = ?, description = ?, duration = ?, rating = ?, release_date = ?, genre = ?, imageURL = ?, trailerURL = ? WHERE movie_id = ?";
        try (PreparedStatement statement = conn.prepareStatement(query)) {
            statement.setString(1, movie.getTitle());
            statement.setString(2, movie.getDescription());
            statement.setInt(3, movie.getDuration());
            statement.setDouble(4, movie.getRating());
            statement.setDate(5, movie.getReleaseDate());
            statement.setString(6, movie.getGenre());
            statement.setString(7, movie.getImageUrl());
            statement.setString(8, movie.getTrailerUrl());
            statement.setInt(9, movie.getMovieId());
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            return false;
        }
    }

    // DELETE a movie
    public boolean deleteMovie(int movieId) {
        String query = "DELETE FROM movies WHERE movie_id = ?";
        try (PreparedStatement statement = conn.prepareStatement(query)) {
            statement.setInt(1, movieId);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            return false;
        }
    }

    void close() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
*/