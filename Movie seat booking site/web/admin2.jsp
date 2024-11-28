<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        mark { 
  background-color: rgba(34, 33, 32, 0.897);
  color: #FFA500;}
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
            color: #c70707;
        }
         /* Full-page background */
         .background-image {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('/mnt/data/qw.jpg');
            background-size: cover;
            background-position: center;
            z-index: -1;
            filter: brightness(4.0); /* Darken for text readability */
        } /* Header */
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
        .container {
            display: flex;
        }
        .sidebar {
            width: 250px;
            background-color: #1e1e1e;
            padding: 20px;
            height: 100vh;
        }
        .sidebar h2 {
            color: #FFA500;
        }
        .sidebar a {
            color: #fff;
            text-decoration: none;
            display: block;
            padding: 10px;
            margin: 20px 0;
            cursor: pointer;
        }
        .sidebar a:hover {
            background-color: #ff6600;
        }
        .main-content {
            padding: 20px;
            flex: 1;
            display: none; /* Hidden by default */
        }
        .main-content.active {
            display: block; /* Show only the active section */
        }
        .form-container, .table-container {
            background-color: #292727;
            padding: 20px;
            border-radius: 8px;
            margin-top: 20px;
        }
        .form-container h4, .table-container h4 {
            color: #FFA500;
            margin-bottom: 10px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #ccc;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #555;
            border-radius: 4px;
            background-color: #444;
            color: #fff;
        }
        .button {
            background-color: #ff6600;
            color: rgb(10, 10, 10);
            border: black;
            padding: 20px 25px;
            cursor: pointer;
            margin-top: 20px;
            border-radius: 4px;
            transition: background 0.3s;
        }
        .button:hover {
            background-color: #ff6600;
        }
        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .table th, .table td {
            border: 1px solid #555;
            padding: 10px;
            text-align: left;
            color: #fff;
        }
        .table th {
            background-color: #ff6600;
        }
        .table tr {
            background-color: #2e2c2c;
        }
    
        /* Logout Page Styling */
    
        /* Logout Confirmation Styling */
        .logout-container {
            text-align: center;
            margin-top: 50px;
        }
        .logout-container h3 {
            font-size: 2em;
            color: #ff6600;
            margin-bottom: 20px;
        }
        .logout-container p {
            font-size: 1.1em;
            color: #ddd;
            margin-bottom: 30px;
        }
        .button-logout {
            background-color: #ff6600;
            color: white;
            border: none;
            padding: 12px 24px;
            cursor: pointer;
            font-size: 1em;
            border-radius: 8px;
            transition: background 0.3s;
        }
        .button-logout:hover {
            background-color: #ff6600;
        }
        /* Custom Alert Popup Styling */
        .alert-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8);
            align-items: center;
            justify-content: center;
        }
        .alert-box {
            background-color: #333;
            padding: 30px;
            border-radius: 8px;
            text-align: center;
            width: 300px;
        }
        .alert-box h4 {
            color: #ff6600;
            margin-bottom: 15px;
        }
        .alert-box button {
            background-color: #ff6600;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 10px;
            border-radius: 5px;
        }
        .alert-box button:hover {
            background-color: #ff6600;
        }
        
    </style>
</head>
<body background="background.jpg">
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
<div class="container">
    <div class="sidebar">
        <h2>Admin Dashboard</h2>
        <a onclick="showSection('dashboard')">Dashboard</a>
        <a onclick="showSection('manage-movies')">Manage Movies</a>
        <a onclick="showSection('movie-details')">Movie Details</a>
        <a onclick="showSection('view-bookings')">View Bookings</a>
        <a onclick="showSection('manage-users')">Manage user </a>
        <a onclick="showSection('settings')">Settings</a>
        <a onclick="showSection('logout')">Logout</a>
    </div>

    <!-- Main Content Sections -->
    <div class="main-content" id="dashboard">
        <h1><mark>Dashboard Overview</mark></h1>
        <p><h2><mark>Welcome to the admin dashboard. Here you can manage movies, showtimes, bookings, users, and more.</mark></h2></p>
    </div>
    <div class="main-content" id="dashboard">
        <h1><mark>Dashboard Overview</mark></h1>
        <p><h2><mark>Welcome to the admin dashboard. Here you can manage movies, showtimes, bookings, users, and more.</mark></h2></p>
    </div>

    <div class="main-content" id="manage-movies">
        <h2><mark>Manage Movies</mark></h2>
        <button class="button" onclick="document.getElementById('addMovieForm').style.display='block'">Add New Movie</button>
        <div id="addMovieForm" class="form-container" style="display:none;">
            <h4>Add Movie</h4>
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" id="title" placeholder="Enter movie title" required>
            </div>
            <div class="form-group">
                <label for="genre">Genre</label>
                <select id="genre" required>
                    <option value="action">Action</option>
                    <option value="comedy">Comedy</option>
                    <option value="drama">Drama</option>
                </select>
            </div>
            <div class="form-group">
                <label for="duration">Duration (Minutes)</label>
                <input type="number" id="duration" placeholder="Enter movie duration" min="1" required>
            </div>
            <div class="form-group">
                <label for="rating">Rating</label>
                <input type="text" id="rating" placeholder="Enter movie rating" required>
            </div>
            <div class="form-group">
                <label for="release-date">Release Date</label>
                <input type="date" id="release-date" required>
            </div>
            <div class="form-group">
                <label for="image-url">Image URL</label>
                <input type="text" id="image-url" placeholder="Enter movie image URL"required>
            </div>
            <div class="form-group">
                <label for="trailer-url">Trailer URL</label>
                <input type="text" id="trailer-url" placeholder="Enter movie trailer URL"required>
            </div>
            <button onclick="addMovie()" class="button">Submit</button>
        </div>
    </div>
    

    
    <div class="main-content" id="movie-details">
        <h2><mark>Movie Details</mark></h2>
        <div class="table-container">
            <h4>Movie Information</h4>
            <table class="table">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Duration (Minutes)</th>
                        <th>Rating</th>
                        <th>Release Date</th>
                        <th>Image</th>
                        <th>Trailer</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody id="movieDetailsTableBody">
                    <!-- Movie details will be populated here -->
                </tbody>
            </table>
        </div>
    </div>
    
    
    <div class="main-content" id="manage-showtime">
        <h2><mark>Manage Showtime</mark></h2>
        <button class="button" onclick="document.getElementById('addShowtimeForm').style.display='block'">Add New Showtime</button>
        <div id="addShowtimeForm" class="form-container" style="display:none;">
            <h4>Add Showtime</h4>
            <div class="form-group">
                <label for="movie-title">Movie Title</label>
                <input type="text" id="movie-title" placeholder="Enter movie title">
            </div>
            <div class="form-group">
                <label for="date">Date</label>
                <input type="date" id="date">
            </div>
            <div class="form-group">
                <label for="time">Time</label>
                <input type="time" id="time">
            </div>
            <div class="form-group">
                <label for="cinema-hall">Cinema Hall</label>
                <input type="text" id="cinema-hall" placeholder="Enter cinema hall name">
            </div>
            <div class="form-group">
                <label for="seats">Available Seats</label>
                <input type="number" id="seats" placeholder="Enter number of available seats">
            </div>
            <button type="submit" class="button">Submit</button>
        </div>
    </div>

    <div class="main-content" id="view-bookings">
        <h2><mark>View Bookings</mark></h2>
        <div class="table-container">
            <h4>Booking Information</h4>
            <table class="table">
                <thead>
                    <tr>
                        <th>Booking ID</th>
                        <th>Customer Name</th>
                        <th>Movie</th>
                        <th>Showtime</th>
                        <th>Seats</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Example booking entries; would typically be populated dynamically -->
                    <tr>
                        <td>1001</td>
                        <td>John Doe</td>
                        <td>Action Movie</td>
                        <td>7:00 PM</td>
                        <td>5</td>
                        <td>Confirmed</td>
                    </tr>
                    <tr>
                        <td>1002</td>
                        <td>Jane Smith</td>
                        <td>Comedy Show</td>
                        <td>9:00 PM</td>
                        <td>3</td>
                        <td>Pending</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="main-content" id="manage-users">
        <h2><mark>Manage Users</h2>
        <button class="button" onclick="document.getElementById('addUserForm').style.display='block'">Add New User</button>
        
        <!-- Form to Add New User -->
        <div id="addUserForm" class="form-container" style="display:none;">
            <h4>Add User</h4>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" placeholder="Enter username">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" placeholder="Enter email address">
            </div>
            <div class="form-group">
                <label for="role">Role</label>
                <select id="role">
                    <option value="admin">Admin</option>
                    <option value="editor">Editor</option>
                    <option value="viewer">Viewer</option>
                </select>
            </div>
            <div class="form-group">
                <label for="status">Status</label>
                <select id="status">
                    <option value="active">Active</option>
                    <option value="inactive">Inactive</option>
                </select>
            </div>
            <button type="submit" class="button">Submit</button>
        </div>
        
        <!-- Table to Display Existing Users -->
        <div class="user-table" style="margin-top: 20px;">
            <table class="table">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Example user entries; would typically be populated dynamically -->
                    <tr>
                        <td>john_doe</td>
                        <td>john@example.com</td>
                        <td>Admin</td>
                        <td>Active</td>
                        <td>
                            <button class="button" style="padding: 5px 10px;">Edit</button>
                            <button class="button" style="padding: 5px 10px; background-color: #e74c3c;">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>jane_smith</td>
                        <td>jane@example.com</td>
                        <td>Editor</td>
                        <td>Inactive</td>
                        <td>
                            <button class="button" style="padding: 5px 10px;">Edit</button>
                            <button class="button" style="padding: 5px 10px; background-color: #e74c3c;">Delete</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>


    <div class="main-content" id="settings">
        <h3>Settings</h3>
        <div class="form-container">
            <h2><mark>Account Settings</mark></h2>
            <div class="form-group">
                <label for="account-email">Account Email</label>
                <input type="email" id="account-email" placeholder="Update your email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Update your password">
            </div>
            <button type="submit" class="button">Update Account</button>
        </div>

        <div class="form-container" style="margin-top: 20px;">
            <h4>Preferences</h4>
            <div class="form-group">
                <label for="theme">Theme</label>
                <select id="theme">
                    <option value="light">Light</option>
                    <option value="dark">Dark</option>
                </select>
            </div>
            <button type="submit" class="button">Save Preferences</button>
        </div>
    </div>
</div>
<div class="main-content" id="logout">
    <div class="logout-container">
        <h3>Logout</h3>
        <p>Are you sure you want to log out?</p>
        <button class="button-logout" onclick="showAlert()">Confirm Logout</button>
    </div>
</div>

<!-- Custom Alert Popup -->
<div class="alert-overlay" id="alertOverlay">
    <div class="alert-box">
        <h4>Logging Out</h4>
        <p>You have successfully logged out.</p>
        <button onclick="closeAlert()">Close</button>
    </div>
  </div>
</div>
<!-- Footer Section -->
<footer style="background-color: #1c1c1e; color: #e9e4e1; padding: 10px 5px; text-align: center;">
    <div style="max-width: 800px; margin: auto;">
        <!-- Film Hub Logo and Description -->
        <div style="margin-bottom: 20px;">
            <img src="logo.png" alt="Film Hub Logo" style="width: 100px; height: auto; margin-bottom: 10px;">
            <h2 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 1.8em;">Film Hub Movie Theater</h2>
            <p style="color:#ff6600; max-width: 500px; margin: 10px auto;">
                Your ultimate movie experience! Enjoy the latest blockbusters, comfortable seating, and exceptional service at Film Hub. Where every film feels like home.
            </p>
        </div>

        <!-- Links Section -->
          <!-- Social Media Links -->
          <div style="margin-bottom: 20px;">
            <a href="https://facebook.com" target="_blank" style="margin: 0 10px;">
                <img src="zx.png" alt="Facebook" style="width: 30px; height: 30px;">
            </a>
            <a href="https://twitter.com" target="_blank" style="margin: 0 10px;">
                <img src="we.png" alt="Twitter" style="width: 30px; height: 30px;">
            </a>
            <a href="https://instagram.com" target="_blank" style="margin: 0 10px;">
                <img src="er.png" alt="Instagram" style="width: 30px; height: 30px;">
            </a>
            <a href="https://youtube.com" target="_blank" style="margin: 0 10px;">
                <img src="as.png" alt="YouTube" style="width: 30px; height: 30px;">
            </a>
        </div>



        <!-- Footer Bottom -->
        <div style="border-top: 1px solid#ff6600 ;">
            <p style="color:#ff6600 ; font-size: 0.9em;">&copy; 2024 Film Hub Movie Theater. All rights reserved.</p>
            <p>
                <a href="/privacy" style="color:#ff6600 ; margin: 0 10px; text-decoration: none;">Privacy Policy</a> |
                <a href="/terms" style="color:#ff6600 ; margin: 0 10px; text-decoration: none;">Terms of Service</a>
            </p>
        </div>
    </div>
</footer>


<script>
    // JavaScript to show only the selected section
    function showSection(sectionId) {
        var sections = document.getElementsByClassName('main-content');
        for (var i = 0; i < sections.length; i++) {
            sections[i].classList.remove('active');
        }
        document.getElementById(sectionId).classList.add('active');
    }
    // Set default section to Dashboard
    showSection('dashboard');
    
    let movies = JSON.parse(localStorage.getItem('movies')) || [];

// Function to save movie data
function saveMovieData(event) {
    event.preventDefault();

    // Capture form data
    const movieData = {
        id: Date.now(),
        title: document.getElementById('title').value,
        genre: document.getElementById('genre').value,
        duration: document.getElementById('duration').value,
        rating: document.getElementById('rating').value,
        releaseDate: document.getElementById('release-date').value,
        imageUrl: document.getElementById('image-url').value,
        trailerUrl: document.getElementById('trailer-url').value,
    };

    // Add new movie to movies array and save to localStorage
    movies.push(movieData);
    localStorage.setItem('movies', JSON.stringify(movies));

    // Clear form and refresh Movie Details section
    document.getElementById('addMovieForm').reset();
    displayMovieData();
    showSection('movie-details');
}

// Function to display movie data in the Movie Details section
function displayMovieData() {
    const tableBody = document.getElementById('movieDetailsTableBody');
    tableBody.innerHTML = '';

    movies.forEach((movie) => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${movie.title}</td>
            <td>${movie.genre}</td>
            <td>${movie.duration}</td>
            <td>${movie.rating}</td>
            <td>${movie.releaseDate}</td>
            <td><img src="${movie.imageUrl}" alt="${movie.title} Image" style="width: 50px;"></td>
            <td><a href="${movie.trailerUrl}" target="_blank">Watch Trailer</a></td>
            <td>
                <button class="button" onclick="editMovie(${movie.id})" style="padding: 5px 10px;">Edit</button>
                <button class="button" onclick="deleteMovie(${movie.id})" style="padding: 5px 10px; background-color: #e74c3c;">Delete</button>
            </td>
        `;
        tableBody.appendChild(row);
    });
}

// Function to edit a movie
function editMovie(id) {
    const movie = movies.find(m => m.id === id);

    if (movie) {
        // Populate form with existing movie data for editing
        document.getElementById('title').value = movie.title;
        document.getElementById('genre').value = movie.genre;
        document.getElementById('duration').value = movie.duration;
        document.getElementById('rating').value = movie.rating;
        document.getElementById('release-date').value = movie.releaseDate;
        document.getElementById('image-url').value = movie.imageUrl;
        document.getElementById('trailer-url').value = movie.trailerUrl;

        // Show form and temporarily remove movie
        document.getElementById('addMovieForm').style.display = 'block';
        movies = movies.filter(m => m.id !== id);
        localStorage.setItem('movies', JSON.stringify(movies));
    }
}

// Function to delete a movie
function deleteMovie(id) {
    // Filter out the movie with the specified id
    movies = movies.filter(movie => movie.id !== id);
    localStorage.setItem('movies', JSON.stringify(movies));
    displayMovieData();
}

// Initialize display of movie data
document.addEventListener("DOMContentLoaded", displayMovieData);

     // Show alert overlay
    function showAlert() {
        document.getElementById('alertOverlay').style.display = 'flex';
    }
    
    // Close alert overlay and go back to dashboard or login page
    function closeAlert() {
        document.getElementById('alertOverlay').style.display = 'none';
        // Redirect to the login page or dashboard
        window.location.href = "login.html"; // Update with your actual login page URL
    }
</script>

</body>
</html>


