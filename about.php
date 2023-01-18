<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();} for php 5.4 and above

if(session_id() == '' || !isset($_SESSION)){session_start();}


?>

<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About Us || KHAREED LO</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/vendor/modernizr.js"></script>
  </head>
  <body>

    <nav class="top-bar" data-topbar role="navigation">
      <ul class="title-area">
        <li class="name">
          <h1><a href="index.php">KHAREED LO</a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
      </ul>

      <section class="top-bar-section">
      <!-- Right Nav Section -->
        <ul class="right">
          <li class="active"><a href="about.php">About</a></li>
          <li><a href="products.php">Products</a></li>
          <li><a href="cart.php">View Cart</a></li>
          <li><a href="orders.php">My Orders</a></li>
          <li><a href="contact.php">Contact</a></li>
          <?php
    
          if(isset($_SESSION['username'])){
            echo '<li><a href="account.php">My Account</a></li>';
            echo '<li><a href="logout.php">Log Out</a></li>';
          }
          else{
            echo '<li><a href="login.php">Log In</a></li>';
            echo '<li><a href="register.php">Register</a></li>';
          }
          ?>
        </ul>
      </section>
    </nav>
     <div class="row" style="margin-top:30px;">
      <div class="small-12"> 
        <p style="font-family: Garamond; font-size:25px;">
          Welcome to <b>KHAREED LO</b>, your one-stop shop for the latest fashion trends.
          We started this business with a simple goal: to provide our customers with stylish
          and affordable clothing options. We believe that everyone deserves to look and feel
          their best, regardless of their budget.
          Our team is made up of fashion enthusiasts who are dedicated to curating a collection of 
          clothing that is both on-trend and accessible. We work with a variety of designers and 
          manufacturers to bring you a wide range of options, from casual wear to formal wear.
          At Fashion Avenue, we take pride in our customer service. Our friendly and knowledgeable
          staff is always available to assist you with any questions or concerns you may have. We also 
          offer free returns and exchanges to make sure you're completely satisfied with your purchase.
          Thank you for choosing Fashion Avenue. We hope you enjoy shopping with us!"
          Please note that this is just a sample, you may want to tailor it to your specific business and
          its characteristics.
          
        </p>
        <footer>
           <p style="text-align:center; font-size:0.8em;">&copy; KHAREED LO. All Rights Reserved.</p>
        </footer>

      </div>
    </div>







    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
