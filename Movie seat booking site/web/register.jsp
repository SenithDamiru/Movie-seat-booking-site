<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->



<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Film Hub - Register</title>
    <link rel="stylesheet" href="reg.css">
</head>
<body>
    <div class="video-background">
        <video autoplay muted loop>
            <source src="background.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <div class="overlay"></div>
    </div>
    <div class="container">
        <div class="logo">
            <span class="film">Film</span><span class="hub">Hub</span>
        </div>
        <h1>Register And Book Your Seat NOW</h1>
        <form action="RegisterServlet" method="POST">
           
            
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
               <label for="username">First Name:</label>
            <input type="text" id="first_name" name="first_name" required>
            
                <label for="username">Last Name:</label>
            <input type="text" id="last_name" name="last_name" required>
            
            
            
            <button type="submit" class="btn">Register</button>
        </form>
        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </div>
</body>
</html>
