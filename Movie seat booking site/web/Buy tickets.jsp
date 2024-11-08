<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Tickets - FILM HUB</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #ff6600;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        header h1 {
            margin: 0;
            font-size: 1.5em;
        }
        .container {
            display: flex;
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
        }
        .main-content {
            flex: 2;
            margin-right: 20px;
        }
        .sidebar {
            flex: 1;
            text-align: center;
        }
        .sidebar img {
            width: 100%;
            border-radius: 8px;
        }
        .location-selector, .movie-info {
            margin-bottom: 20px;
        }
        .location-selector select, .movie-info select {
            padding: 8px;
            width: 100%;
            margin-bottom: 10px;
        }
        .movie-title {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }
        .theater {
            margin-bottom: 20px;
        }
        .theater h3 {
            font-size: 16px;
            color: #333;
            margin-bottom: 8px;
        }
        .showtime {
            display: inline-block;
            background-color: #ddd;
            color: #333;
            padding: 8px 12px;
            border-radius: 4px;
            margin: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .showtime.selected {
            background-color: #333;
            color: #fff;
        }
        .movie-description {
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
        .button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .button:hover {
            background-color: #555;
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
    color: #f4f4f4;
    font-weight: bold;
    display: flex;
    align-items: center;
}

.header-logo .highlight {
    background-color: #ff6600;
    color: #000000;
    padding: 2px 5px;
    border-radius: 4px;
    margin-left: 5px;
}

.header-links a, .header-actions a {
    color: #ffffff;
    text-decoration: none;
    margin: 0 15px;
    font-size: 14px;
}

.header-actions .buy-tickets {
    background-color: #ff6600;
    color: #ffffff;
    padding: 10px 20px;
    border-radius: 4px;
}
.select-seat{
    background-color: #ff6600;
    color: #ffffff;
    padding: 10px 20px;
    border-radius: 4px;
}

    </style>
</head>
<body>
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
                <a href="Meals.jsp">MEALS AND BEVRAGES</a>
                <a href="advetise.jsp">ADVERTISE</a>
            </nav>
            <div class="header-actions">
                <a href="Buy tickets.jsp" class="buy-tickets">BUY TICKETS</a>
                <a href="#">LOGIN</a>
            </div>
        </header>
    <!-- Header -->
    <header>
        <h1>BUY TICKETS</h1>
    </header>

    <!-- Main Container -->
    <div class="container">
        <!-- Main Content -->
        <div class="main-content">
            <!-- Location Selector -->
            <div class="location-selector">
                <label for="location">Location:</label>
                <select id="location">
                    <option value="all">All Locations</option>
                    <option value="havelock">Scope Cinemas Multiplex - Havelock City Mall</option>
                    <option value="colombo">Scope Cinemas Multiplex - Colombo City Centre</option>
                </select>
            </div>

            <!-- Movie Info -->
            <div class="movie-info">
                <h2 class="movie-title">THE WILD ROBOT</h2>

                <!-- Theater Section -->
                <div class="theater">
                    <h3>Scope Cinemas Multiplex - Havelock City Mall</h3>
                    <div class="showtime" onclick="selectShowtime(this)">04:15 PM</div>
                    <div class="showtime" onclick="selectShowtime(this)">07:00 PM</div>
                    <a href="seats.html" class="select-seat">BOOK</a>
                </div>

                <div class="theater">
                    <h3>Scope Cinemas Multiplex - Colombo City Centre</h3>
                    <div class="showtime" onclick="selectShowtime(this)">10:45 AM</div>
                    <div class="showtime" onclick="selectShowtime(this)">01:00 PM</div>
                    <div class="showtime" onclick="selectShowtime(this)">06:30 PM</div>
                    <a href="seats.html" class="select-seat">BOOK</a>
                </div>
                <br>
<h2 class="movie-title">VENOM: THE LAST DANCE</h2>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Havelock City Mall</h3>
    <div class="showtime" onclick="selectShowtime(this)">04:15 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">07:30 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Colombo City Centre</h3>
    <div class="showtime" onclick="selectShowtime(this)">10:45 AM</div>
    <div class="showtime" onclick="selectShowtime(this)">02:30 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">06:00 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>
<br>
<h2 class="movie-title">JOURNEY TO MARS</h2>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Havelock City Mall</h3>
    <div class="showtime" onclick="selectShowtime(this)">09:00 AM</div>
    <div class="showtime" onclick="selectShowtime(this)">12:45 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Colombo City Centre</h3>
    <div class="showtime" onclick="selectShowtime(this)">03:30 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">07:15 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">09:30 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>

<br>
<h2 class="movie-title">THE LAST KING</h2>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Havelock City Mall</h3>
    <div class="showtime" onclick="selectShowtime(this)">10:00 AM</div>
    <div class="showtime" onclick="selectShowtime(this)">01:45 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Colombo City Centre</h3>
    <div class="showtime" onclick="selectShowtime(this)">04:30 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">08:45 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>

<br>
<h2 class="movie-title">ESCAPE FROM EARTH</h2>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Havelock City Mall</h3>
    <div class="showtime" onclick="selectShowtime(this)">09:15 AM</div>
    <div class="showtime" onclick="selectShowtime(this)">12:30 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Colombo City Centre</h3>
    <div class="showtime" onclick="selectShowtime(this)">03:45 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">07:00 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">09:15 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>

<br>
<h2 class="movie-title">THE MYSTIC FOREST</h2>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Havelock City Mall</h3>
    <div class="showtime" onclick="selectShowtime(this)">11:00 AM</div>
    <div class="showtime" onclick="selectShowtime(this)">02:15 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Colombo City Centre</h3>
    <div class="showtime" onclick="selectShowtime(this)">05:00 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">07:45 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>

<br>
<h2 class="movie-title">TIME TRAVELERS</h2>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Havelock City Mall</h3>
    <div class="showtime" onclick="selectShowtime(this)">08:30 AM</div>
    <div class="showtime" onclick="selectShowtime(this)">11:45 AM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Colombo City Centre</h3>
    <div class="showtime" onclick="selectShowtime(this)">04:15 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">09:00 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>

<br>
<h2 class="movie-title">THE LOST CITY</h2>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Havelock City Mall</h3>
    <div class="showtime" onclick="selectShowtime(this)">01:00 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">05:30 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Colombo City Centre</h3>
    <div class="showtime" onclick="selectShowtime(this)">11:15 AM</div>
    <div class="showtime" onclick="selectShowtime(this)">06:45 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>

<br>
<h2 class="movie-title">THE DARK SHADOW</h2>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Havelock City Mall</h3>
    <div class="showtime" onclick="selectShowtime(this)">10:30 AM</div>
    <div class="showtime" onclick="selectShowtime(this)">03:00 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Colombo City Centre</h3>
    <div class="showtime" onclick="selectShowtime(this)">07:30 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">09:45 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>

<br>
<h2 class="movie-title">MYSTERY OF THE SEA</h2>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Havelock City Mall</h3>
    <div class="showtime" onclick="selectShowtime(this)">08:45 AM</div>
    <div class="showtime" onclick="selectShowtime(this)">01:15 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>
<div class="theater">
    <h3>Scope Cinemas Multiplex - Colombo City Centre</h3>
    <div class="showtime" onclick="selectShowtime(this)">05:45 PM</div>
    <div class="showtime" onclick="selectShowtime(this)">08:15 PM</div>
    <a href="seats.html" class="select-seat">BOOK</a>
</div>

            </div>
        </div>
    <!-- JavaScript -->
    <script>
        // Function to toggle showtime selection
        function selectShowtime(element) {
            const showtimes = document.querySelectorAll('.showtime');
            showtimes.forEach(showtime => showtime.classList.remove('selected'));
            element.classList.add('selected');
        }
    </script>
</body>
</html>
