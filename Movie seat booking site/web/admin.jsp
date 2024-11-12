<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Movie Booking</title>
    <link rel="stylesheet" href="admin.css">
</head>
<body>
    <div class="container">
        <h1>Admin Dashboard</h1>
        <section id="manage-movies">
            <h2>Manage Movies</h2>
            
            
            <form method="POST" action="addmovieservlet">
                
                <input type="text" name="title" placeholder="Title" required>
                
                <input type="text" name="description" placeholder="Description" required>
                
                <input type="int" name="duration" placeholder="Duration (minutes)" required>
                
                <input type="double" name="rating" placeholder="Rating" required>
                
                <input type="date" name="release_date" placeholder="Released Date" required>
                
                <input type="text" name="genre" placeholder="Genre" required>
               
                <input type="text" name="imageURL" placeholder="Image URL" required> 
                
                <input type="text" name="trailerURL" placeholder="Trailor URL" required> 
                
                <button type="submit">Add Movie</button>
            </form>
            
            
            
            
            
            
            
        </section>
        <section id="manage-showtimes">
            <h2>Manage Showtimes</h2>
            <form id="showtime-form" method="POST" action="admin.php?action=add_showtime">
                <input type="number" name="movie_id" placeholder="Movie ID" required>
                <input type="datetime-local" name="showtime" required>
                <button type="submit">Add Showtime</button>
            </form>
        </section>
        <section id="view-bookings">
            <h2>View Bookings</h2>
            <button onclick="fetchBookings()">Load Bookings</button>
            <div id="booking-list"></div>
        </section>
    </div>
    <script src="admin.js"></script>
</body>
</html>