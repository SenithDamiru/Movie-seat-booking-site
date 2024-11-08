import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class movieD {
    private static final String URL = "jdbc:mysql://localhost:3306/your_database_name";
    private static final String USER = "root";
    private static final String PASSWORD = "SLTechieBoy@2005";

    private Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    public List<moviemodel> getAllMovies() throws SQLException, ClassNotFoundException {
        List<moviemodel> movies = new ArrayList<>();
        String sql = "SELECT * FROM movies";

        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                moviemodel movie = new moviemodel(
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
                movies.add(movie);
            }
        }
        return movies;
    }
}
