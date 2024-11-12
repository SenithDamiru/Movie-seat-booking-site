<%@page import="newpackage.DatabaseConnection"%>
<%@page import="newpackage.movies"%>





<%@ page import="java.sql.Date" %>
<%@page import="newpackage.moviesDAO"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
    moviesDAO movieData = new moviesDAO(DatabaseConnection.getConnection());
    List<movies> movie = movieData.getAllMovies();
    request.setAttribute("MOVIES_LIST",movie);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FILM HUB - Movies</title>
    <link rel="icon" href="logo.png" type="image/x-icon">
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #1a1a1a;
            color: #ffffff;
        }

        /* Header */
        .header {
            background-color: #1a1a1a;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px;
        }

        .header-logo {
            font-size: 24px;
            color: #ff6600;
            font-weight: bold;
        }

        .header-links a {
            color: #ffffff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 14px;
        }

        .header-links a:hover {
            color: #ff6600;
        }

        .header-actions a {
            color: #ffffff;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 14px;
            margin-left: 15px;
        }

        .header-actions .buy-tickets {
            background-color: #ff6600;
            color: #ffffff;
        }

        /* Main Content */
        .main-content {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            color: #b3b3cc;
        }

        .main-content h1 {
            text-align: center;
            margin-bottom: 40px;
            font-size: 24px;
        }

        /* Movie Grid */
        .movie-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
        }

        .movie-item {
            position: relative;
            overflow: hidden;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .movie-item:hover {
            transform: scale(1.05);
        }

        .movie-item img {
            width: 100%;
            height: auto;
            border-radius: 5px;
            transition: transform 0.3s ease;
        }

        .movie-item:hover img {
            transform: scale(1.1);
        }

        .movie-info {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            padding: 10px;
            background: rgba(0, 0, 0, 0.7);
            color: #ffffff;
            text-align: center;
            transition: transform 0.3s ease;
            transform: translateY(100%);
        }

        .movie-item:hover .movie-info {
            transform: translateY(0);
        }

        .movie-info h3 {
            font-size: 16px;
            margin-bottom: 5px;
            color: #ff6600;
        }

        .movie-info p {
            font-size: 12px;
            margin-bottom: 0;
            color: #b3b3cc;
        }
        /* Footer */
footer {
    background-color: #3a3838aa;
    color: #ffffff;
    padding: 20px;
    text-align: center;
    margin-top: 40px;
}

footer p {
    font-size: 14px;
    margin: 10px 0;
}

footer a {
    color: #ff6600;
    text-decoration: none;
}

footer a:hover {
    color: #ffffff;
}
/* Header */
.header {
            background-color: #1a1a1a;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px;
        }

        /* FilmHub logo styling */
        .header-logo {
            font-size: 24px;
            font-weight: bold;
            display: flex;
            align-items: center;
            color: #ffffff;
        }

        .header-logo .highlight {
            background-color: #ff6600; /* Yellow background for "Hub" */
            color: #000000; /* Black text color for "Hub" */
            padding: 2px 5px;
            border-radius: 4px;
            margin-left: 5px;
        }
                /* Main Banner */
                .main-banner {
            display: flex;
            align-items: center;
            background-image: url('img1.jpg'); /* Replace with actual image path */
            background-size: cover;
            background-position: center;
            height: 80vh;
            position: relative;
        }

        .main-banner::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
        }

        .banner-content {
            position: relative;
            z-index: 2;
            max-width: 600px;
            margin-left: 40px;
        }

        .banner-title {
            font-size: 36px;
            font-weight: bold;
            color: #ff6600;
            margin-bottom: 20px;
        }

        .banner-subtitle {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .banner-text {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .banner-buttons a {
            display: inline-block;
            padding: 5px 10px;
            margin-right: 10px;
            border-radius: 4px;
            font-size: 14px;
            text-decoration: none;
        }

        .banner-buttons .buy-ticket {
            background-color: #ff6600;
            color: #ffffff;
        }

        .banner-buttons .watch-trailer {
            border: 1px solid #ff6600;
            color: #ff6600;
        }

        .banner-buttons .buy-ticket:hover,
        .banner-buttons .watch-trailer:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="header-logo">
            Film<span class="highlight">Hub</span>
        </div>
        <nav class="header-links">
            <a href="index.jsp">HOME</a>
            <a href="Movies.jsp">MOVIES</a>
            <a href="Locations.jsp">LOCATIONS</a>
            <a href="Meals.jsp">MEALS AND BEVERAGES</a>
            <a href="advetise.jsp">ADVERTISE</a>
        </nav>
        <div class="header-actions">
            <a href="Buy tickets.jsp" class="buy-tickets">BUY TICKETS</a>
            <a href="login.jsp">LOGIN</a>
        </div>
    </header>

    <!-- Main Content -->
    <div class="main-content">
        <h1>NOW SHOWING</h1>
        <div class="movie-grid">
   <!-- Add more movie items as needed -->
             <c:forEach var= "tempMovie" items="${MOVIES_LIST}">
            <div class="movie-item">
                <img src="${tempMovie.imageURL}"> 
                <div class="movie-info">
                    <h3>${tempMovie.title}</h3>
                    <p>NOW SCREENING</p><br>
                    <div class="banner-buttons">
                        <a href="Buy tickets.html" class="buy-ticket">BUY TICKETS ONLINE</a>
                        <a href="${tempMovie.trailerURL}" class="watch-trailer">WATCH TRAILER</a>
                    </div>
                </div>
            </div>
              </c:forEach>
           
   
   
   
   
        </div>
    </div>
    
        
 <table border="1" cellspacing="1" cellpadding="1">
                <thead>
                    <tr>
                        <th>title</th>
                        <th>description</th>
                        <th>duration</th>
                        <th>rating</th>
                        <th>release_date</th>
                        <th>genre</th>
                        <th>imageURL</th>
                        <th>trailerURL</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var= "tempMovie" items="${MOVIES_LIST}">
                    <tr>
                        <td>${tempMovie.title}</td>
                        <td>${tempMovie.description}</td>
                        <td>${tempMovie.duration}</td>
                        <td>${tempMovie.rating}</td>
                        <td>${tempMovie.release_date}</td>
                        <td>${tempMovie.genre}</td>
                        <td>${tempMovie.imageURL}</td>
                        <td>${tempMovie.trailerURL}</td>
                    </tr>
                    </c:forEach>
                    
                 
                </tbody>
            </table>

            
    
        <!-- Footer -->
        <footer>
            <p>&copy; 2024 FILM HUB. All Rights Reserved.</p>
            <p>
                <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a> | <a href="#">Contact Us</a>
            </p>
            <p>Follow us on:
                <a href="#">Facebook</a> | <a href="#">Twitter</a> | <a href="#">Instagram</a>
            </p>
        </footer>
    
        <!-- JavaScript for Reminder -->
        <script>
            // This script is just a placeholder for setting a reminder
            function setReminder(movieTitle) {
                alert('Reminder set for ' + movieTitle + '!');
            }
        </script>
        </div>
</body>
</html>

