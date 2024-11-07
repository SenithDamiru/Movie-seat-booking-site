<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FILM HUB</title>
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
            color: #ffffff;
            background-color: #000000;
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

        /* Main Banner */
        .main-banner {
            display: flex;
            align-items: center;
            background-image: url('M17.jpeg'); /* Replace with actual image path */
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
            padding: 10px 20px;
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

        /* Coming Soon Section */
        .coming-soon {
            margin-top: 50px;
        }

        .coming-soon h2 {
            font-size: 22px;
            color: #ff6600;
            text-align: center;
            margin-bottom: 20px;
        }

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

        .movie-info button {
            background-color: #ff6600;
            border: none;
            padding: 5px 10px;
            color: #ffffff;
            cursor: pointer;
            border-radius: 4px;
            font-size: 12px;
        }

        .movie-info button:hover {
            background-color: #e65c00;
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
            <a href="Buy tickets.html" class="buy-tickets">BUY TICKETS</a>
            <a href="#">LOGIN</a>
        </div>
    </header>

    <!-- Main Banner -->
    <section class="main-banner">
        <div class="banner-content">
            <h1 class="banner-title">Venom: The Last Dance</h1>
            <p class="banner-subtitle">IN CINEMAS 8TH NOVEMBER</p>
            <p class="banner-text">BUY TICKETS ONLINE</p>
            <div class="banner-buttons">
                <a href="Buy tickets.html" class="buy-ticket">BUY TICKETS ONLINE</a>
                <a href="https://www.youtube.com/watch?v=__2bjWbetsA" class="watch-trailer">WATCH TRAILER</a>
            </div>
        </div>
    </section>
    <br>
    <br>
    <br>
    <div>
          <!-- Main Content -->
    <div class="main-content">
        <h1>Welcome to FILM HUB</h1><br>
        <a>Welcome to FILM HUB â your ultimate destination for a premium cinema experience. Our website is designed to make movie-going convenient, engaging, and enjoyable. With a modern, user-friendly interface, you can easily browse through the latest movies, explore upcoming releases, and find exclusive deals tailored just for you. Our "Now Showing" section provides quick access to currently playing films, and the "Coming Soon" section allows you to set reminders for movies youâre excited about. Additionally, you can view cinema locations with detailed information and interactive maps, making it easier than ever to find the nearest theater.
            <br>
            <br>

            With a secure online ticketing system, you can book your seats in advance and skip the queues. Registered users can also enjoy exclusive perks and rewards through our FILM HUB loyalty program. The websiteâs seamless design and interactive hover animations add a touch of sophistication, enhancing your browsing experience. Whether you're looking for action-packed blockbusters, family-friendly animations, or suspenseful thrillers, FILM HUB has something for every movie lover. Enjoy the magic of cinema like never before!
        </a>
<br>
<br>
<br>

        <!-- Coming Soon Section -->
        <div class="coming-soon">
            <h2>Coming Soon</h2>
            <div class="movie-grid">
                <!-- Movie Item -->
                <div class="movie-item">
                    <img src="M1.jpg" alt="Movie 1">
                    <div class="movie-info">
                        <h3>Captain America: Brave New World (2025)</h3>
                        <button onclick="alert('Reminder set for Captain America: Brave New World!')">Set Reminder</button>
                    </div>
                </div>
                <!-- Movie Item -->
                <div class="movie-item">
                    <img src="M2.jpg" alt="Movie 2">
                    <div class="movie-info">
                        <h3>Thunderbolts* (2025)</h3>
                        <button onclick="alert('Reminder set for Thunderbolts*!')">Set Reminder</button>
                    </div>
                </div>
                <!-- Movie Item -->
                <div class="movie-item">
                    <img src="M3.jpeg" alt="Movie 3">
                    <div class="movie-info">
                        <h3>Mortal Kombat 2 (2025)</h3>
                        <button onclick="alert('Reminder set for Mortal Kombat 2!')">Set Reminder</button>
                    </div>
                </div>
                <!-- Movie Item -->
                <div class="movie-item">
                    <img src="M4.jpg" alt="Movie 3">
                    <div class="movie-info">
                        <h3>Jurassic World Rebirth (2025)</h3>
                        <button onclick="alert('Reminder set for Jurassic World Rebirth!')">Set Reminder</button>
                    </div>
                </div>
                <!-- Movie Item -->
                <div class="movie-item">
                    <img src="m5.jpg" alt="Movie 3">
                    <div class="movie-info">
                        <h3>Red One (this december)</h3>
                        <button onclick="alert('Reminder set for Red One!')">Set Reminder</button>
                    </div>
                </div>
                <!-- Movie Item -->
                <div class="movie-item">
                    <img src="m6.jpg" alt="Movie 3">
                    <div class="movie-info">
                        <h3>Superman (2025)</h3>
                        <button onclick="alert('Reminder set for Superman!')">Set Reminder</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 FILM HUB. All Rights Reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a> | <a href="#">Contact Us</a></p>
        <p>Follow us on: <a href="#">Facebook</a> | <a href="#">Twitter</a> | <a href="#">Instagram</a></p>
    </footer>
</body>
</html>

<!--
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>TODO write content</div>
        
         <form action="TestConnection" method="get">
        <input type="submit" value="Test Database Connection">
    </form>
    </body>
</html>
-->