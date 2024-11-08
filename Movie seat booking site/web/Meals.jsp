<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            text-align: center;
        }

        .movie-item img {
            width: 100%;
            height: auto;
            border-radius: 5px;
            transition: transform 0.3s ease;
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
        }

        .movie-info h3 {
            font-size: 16px;
            margin-bottom: 5px;
            color: #ff6600;
        }

        .movie-info p {
            font-size: 12px;
            margin-bottom: 5px;
            color: #b3b3cc;
        }

        .add-to-cart {
            background-color: #ff6600;
            color: #ffffff;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
        }

        /* Cart Summary */
        .cart-summary {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background-color: #3a3838;
            color: #ffffff;
            border-radius: 8px;
        }

        .cart-summary h2 {
            font-size: 20px;
            margin-bottom: 20px;
            text-align: center;
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .cart-item p {
            margin: 0;
        }

        .pay-button {
            background-color: #ff6600;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
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
            <a href="#">LOGIN</a>
        </div>
    </header>

    <!-- Main Content -->
    <div class="main-content">
        <h1>MEALS AND SHAKES</h1>
        <div class="movie-grid">
            <!-- Sample Meal Item -->
            <div class="movie-item">
                <img src="f1.jpg" alt="Spicy Chicken Wings">
                <div class="movie-info">
                    <h3>Spicy Chicken Wings</h3>
                    <p>RS.1500</p>
                    <button class="add-to-cart" onclick="addToCart('Spicy Chicken Wings', 1500)">Add to Cart</button>
                </div>
            </div>
            <!-- Repeat similar structure for each item -->
            <div class="movie-item">
                <img src="f2.jpg" alt="Cheesy Nachos">
                <div class="movie-info">
                    <h3>Cheesy Nachos</h3>
                    <p>RS.800</p>
                    <button class="add-to-cart" onclick="addToCart('Cheesy Nachos', 800)">Add to Cart</button>
                </div>
            </div>
            <!-- Add other items in the same way -->
              <!-- Meal Item -->
        <div class="movie-item">
            <img src="f3.jpg">
            <div class="movie-info">
                <h3>Cheesy Nachos hot</h3><!-- Meal name -->
                <p>RS.900</p><!-- Meal price -->
                <button class="add-to-cart" onclick="addToCart('Cheesy Nachos hot', 900)">Add to Cart</button>
            </div>
        </div>
        <!-- Meal Item -->
        <div class="movie-item">
            <img src="f2.jpg">
            <div class="movie-info">
                <h3>Classic Beef Burger</h3><!-- Meal name -->
                <p>RS.1200</p><!-- Meal price -->
                <button class="add-to-cart" onclick="addToCart('Classic Beef Burger', 1200)">Add to Cart</button>
            </div>
        </div>
        <!-- Meal Item -->
        <div class="movie-item">
            <img src="f4.jpg">
            <div class="movie-info">
                <h3>Loaded Fries</h3><!-- Meal name -->
                <p>RS.700</p><!-- Meal price -->
                <button class="add-to-cart" onclick="addToCart('Loaded Fries', 700)">Add to Cart</button>
            </div>
        </div>
        <!-- Meal Item -->
        <div class="movie-item">
            <img src="f5.webp">
            <div class="movie-info">
                <h3>BBQ Chicken Pizza</h3><!-- Meal name -->
                <p>RS.1800</p><!-- Meal price -->
                <button class="add-to-cart" onclick="addToCart('BBQ Chicken Pizza', 1800)">Add to Cart</button>
            </div>
        </div>
        <!-- Meal Item -->
        <div class="movie-item">
            <img src="f6.jpg">
            <div class="movie-info">
                <h3>Garlic Bread Sticks</h3><!-- Meal name -->
                <p>RS.400</p><!-- Meal price -->
                <button class="add-to-cart" onclick="addToCart('Garlic Bread Sticks', 400)">Add to Cart</button>
            </div>
        </div>
        <!-- Meal Item -->
        <div class="movie-item">
            <img src="f7.jpg">
            <div class="movie-info">
                <h3>Caramel Popcorn</h3><!-- Meal name -->
                <p>RS.300</p><!-- Meal price -->
                <button class="add-to-cart" onclick="addToCart('Caramel Popcorn', 300)">Add to Cart</button>
            </div>
        </div>
        <!-- Meal Item -->
        <div class="movie-item">
            <img src="f8.jpeg">
            <div class="movie-info">
                <h3>Chocolate Milkshake</h3><!-- Meal name -->
                <p>RS.600</p><!-- Meal price -->
                <button class="add-to-cart" onclick="addToCart('Chocolate Milkshake', 600)">Add to Cart</button>
            </div>
        </div>
        <!-- Meal Item -->
        <div class="movie-item">
            <img src="f9.jpg">
            <div class="movie-info">
                <h3>Veggie Wrap</h3><!-- Meal name -->
                <p>RS.500</p><!-- Meal price -->
                <button class="add-to-cart" onclick="addToCart('Veggie Wrap', 500)">Add to Cart</button>
            </div>
        </div>
        <!-- Meal Item -->
        <div class="movie-item">
            <img src="f10.jpg">
            <div class="movie-info">
                <h3>Strawberry Smoothie</h3><!-- Meal name -->
                <p>RS.550</p><!-- Meal price -->
                <button class="add-to-cart" onclick="addToCart('Strawberry Smoothie', 550)">Add to Cart</button>
            </div>
        </div>

        </div>
    </div>

    <!-- Cart Summary -->
    <div class="cart-summary">
        <h2>Cart Summary</h2>
        <div id="cartItems"></div>
        <h3>Total: RS. <span id="totalAmount">0</span></h3>
        <button class="pay-button" onclick="payNow()">Pay</button>
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

    <!-- JavaScript for Cart Functionality -->
    <script>
        let cart = [];

        function addToCart(itemName, itemPrice) {
            const item = cart.find(i => i.name === itemName);
            if (item) {
                item.quantity += 1;
            } else {
                cart.push({ name: itemName, price: itemPrice, quantity: 1 });
            }
            updateCart();
        }

        function updateCart() {
            const cartItemsDiv = document.getElementById('cartItems');
            const totalAmountSpan = document.getElementById('totalAmount');
            cartItemsDiv.innerHTML = '';
            let total = 0;

            cart.forEach(item => {
                const itemTotal = item.price * item.quantity;
                total += itemTotal;
                cartItemsDiv.innerHTML += `
                    <div class="cart-item">
                        <p>${item.name} (x${item.quantity})</p>
                        <p>RS. ${itemTotal}</p>
                    </div>
                `;
            });

            totalAmountSpan.innerText = total;
        }

        function payNow() {
            if (cart.length === 0) {
                alert("Your cart is empty!");
            } else {
                alert("Payment successful! Total: RS. " + document.getElementById('totalAmount').innerText);
                cart = [];
                updateCart();
            }
        }
    </script>
</body>
</html>
