<header style="background-color: #FBA808;" class="header">

   <div class="flex">

      <a href="index.php" class="logo"><img style="height: 90px;" src="images/Ellipse 2.png" alt=""></a>

      <nav class="navbar">
         
         <a href="products.php">view products</a>
      </nav>

      <?php
      
      $select_rows = mysqli_query($conn, "SELECT * FROM `cart`") or die('query failed');
      $row_count = mysqli_num_rows($select_rows);

      ?>

      <a href="cart.php" class="cart">Cart<span><?php echo $row_count; ?></span> </a>

      <div id="menu-btn" class="fas fa-bars"></div>

   </div>

</header>