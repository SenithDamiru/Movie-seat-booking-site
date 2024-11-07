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
            background-color: #000000;
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
         /* Header styling */
         .header {
            width: 100%;
            padding: 20px;
            background-color: #1a1a1a;
            color: #f4f4f4;
            text-align: center;
            font-size: 24px;
        }

        /* Slideshow container styling */
        .slideshow-container {
            position: relative;
            width: 80%;
            max-width: 800px;
            margin: 20px auto;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Slides styling */
        .slide {
            display: none;
        }

        .slide img {
            width: 100%;
            height: auto;
            transition: transform 0.5s ease;
        }

        /* Hover effect */
        .slide img:hover {
            transform: scale(1.1);
        }

        /* Slideshow navigation buttons */
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.3s;
            border-radius: 3px;
            user-select: none;
        }

        .prev {
            left: 0;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .next {
            right: 0;
            background-color: rgba(0, 0, 0, 0.5);
        }

        /* Slide indicator dots */
        .dots-container {
            text-align: center;
            padding: 10px;
        }

        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 5px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .active, .dot:hover {
            background-color: #717171;
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

    <!-- Header -->
    <div class="header">Welcome to Our Image Slideshow</div>

    <!-- Slideshow Container -->
    <div class="slideshow-container">
        <!-- Slide 1 -->
        <div class="slide">
            <img src="ad1.jpg" alt="Slide 1">
        </div>

        <!-- Slide 2 -->
        <div class="slide">
            <img src="ad2.png" alt="Slide 2">
        </div>

        <!-- Slide 3 -->
        <div class="slide">
            <img src="ad3.jpg" alt="Slide 3">
        </div>

        <!-- Navigation Buttons -->
        <a class="prev" onclick="changeSlide(-1)">&#10094;</a>
        <a class="next" onclick="changeSlide(1)">&#10095;</a>
    </div>

    <!-- Dots to indicate slides -->
    <div class="dots-container">
        <span class="dot" onclick="setSlide(1)"></span> 
        <span class="dot" onclick="setSlide(2)"></span> 
        <span class="dot" onclick="setSlide(3)"></span> 
    </div>

    <script>
        let currentSlideIndex = 1;
        showSlide(currentSlideIndex);

        // Function to change slide
        function changeSlide(n) {
            showSlide(currentSlideIndex += n);
        }

        // Function to set a specific slide
        function setSlide(n) {
            showSlide(currentSlideIndex = n);
        }

        // Function to display the current slide
        function showSlide(n) {
            let slides = document.getElementsByClassName("slide");
            let dots = document.getElementsByClassName("dot");
            
            // Wrap around if index is out of bounds
            if (n > slides.length) { currentSlideIndex = 1 }
            if (n < 1) { currentSlideIndex = slides.length }

            // Hide all slides
            for (let i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }

            // Remove active class from all dots
            for (let i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }

            // Display the current slide and activate corresponding dot
            slides[currentSlideIndex - 1].style.display = "block";
            dots[currentSlideIndex - 1].className += " active";
        }
    </script>




    <!-- Footer -->
    <footer>
        <p>&copy; 2024 FILM HUB. All Rights Reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a> | <a href="#">Contact Us</a></p>
        <p>Follow us on: <a href="#">Facebook</a> | <a href="#">Twitter</a> | <a href="#">Instagram</a></p>
    </footer>
</body>
</html>
