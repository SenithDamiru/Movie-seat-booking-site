<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FILM HUB - Locations</title>
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

        /* Location Grid */
        .location-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }

        .location-item {
            position: relative;
            overflow: hidden;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .location-item:hover {
            transform: scale(1.05);
        }

        .location-item img {
            width: 100%;
            height: auto;
            border-radius: 5px;
            transition: transform 0.3s ease;
        }

        .location-item:hover img {
            transform: scale(1.1);
        }

        .location-info {
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

        .location-item:hover .location-info {
            transform: translateY(0);
        }

        .location-info h3 {
            font-size: 16px;
            margin-bottom: 5px;
            color: #ff6600;
        }

        .location-info p {
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

    <!-- Main Content -->
    <div class="main-content">
        <h1>OUR LOCATIONS</h1>
        <div class="location-grid">
            <!-- Location Item -->
            <div class="location-item">
                <img src="hall7.jpg" alt="Location 1">
                <div class="location-info">
                    <h3>New York Cinema</h3>
                    <p>New York, NY</p>
                </div>
            </div>
            <!-- Location Item -->
            <div class="location-item">
                <img src="hall8.jpg" alt="Location 2">
                <div class="location-info">
                    <h3>Los Angeles Cinema</h3>
                    <p>Los Angeles, CA</p>
                </div>
            </div>
            <!-- Location Item -->
            <div class="location-item">
                <img src="hall 3.jpg" alt="Location 3">
                <div class="location-info">
                    <h3>Chicago Cinema</h3>
                    <p>Chicago, IL</p>
                </div>
            </div>
            <!-- Location Item -->
            <div class="location-item">
                <img src="hall4.jpg" alt="Location 4">
                <div class="location-info">
                    <h3>Havlock Cinema</h3>
                    <p>Sri Lanaka, TX</p>
                </div>
            </div>
            <!-- Location Item -->
            <div class="location-item">
                <img src="hall5.jpg" alt="Location 5">
                <div class="location-info">
                    <h3>Miami Cinema</h3>
                    <p>Miami, FL</p>
                </div>
            </div>
            <!-- Location Item -->
            <div class="location-item">
                <img src="hall6.jpeg" alt="Location 6">
                <div class="location-info">
                    <h3>San Francisco Cinema</h3>
                    <p>San Francisco, CA</p>
                </div>
            </div>
        </div>
    </div>
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
