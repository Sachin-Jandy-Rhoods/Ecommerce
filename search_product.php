<?php
include('includes/connect.php');
include('functions\common_function.php');
session_start();

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ecommerce Website using PHP and Mysql.</title>
    <!--bootstrap css link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!--font awesome link-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />


    <!-- css link-->

    <link rel="stylesheet" href="style.css">

    <!-- Add to cart css -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.7.1/gsap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <style>
        .card-img-top {
            width: 100%;
            height: 200px;
            object-fit: contain;
        }
    </style>

</head>

<body>
    <!-- navbar-->
    <div class="container-fluid p-0">
        <!-- first child-->
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="container-fluid">
                <img src="Image\Z-logo.png" alt="Couldn'tFind Image" class="logo">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="display_all.php">Products</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="users_area/user_registration.php">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.php">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cart.php"><i class="fa-solid fa-cart-shopping"></i><sup><?php cart_item()?></sup></sup></a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="#">Total Price:<?php total_cart_price(); ?></a>
                        </li>
                    </ul>
                    <form class="d-flex" action=""method="get">
                        <input class="form-control me-2" type="search" placeholder="Search" name="search_data"aria-label="Search">
                        <input type="submit" value="Search" name="search_data_product"class="btn btn-outline-light">
                    </form>
                </div>
            </div>
        </nav>
         <!-- calling cart function-->
         <?php
        cart();
        ?>

        <!--second class-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
            <ul class="navbar-nav me-auto">
                <?php
                 if(!isset($_SESSION['username']))
                 {
                     echo"<li class='nav-item'>
                     <a class='nav-link' href='#'>Welcome Guest</a>
                 </li>";
                 }else{
                     echo"<li class='nav-item'>
                     <a class='nav-link' href='#'>Welcome ".$_SESSION['username']."</a>;
                 </li>";
                 }

                 
                if(!isset($_SESSION['username']))
                {
                    echo"<li class='nav-item'>
                    <a class='nav-link' href='users_area/user_login.php'>Login</a>
                </li>";
                }else{
                    echo"<li class='nav-item'>
                    <a class='nav-link' href='users_area/user_logout.php'>Logout</a>
                </li>";
                }
                ?>

            </ul>
        </nav>

        <!-- Third Child-->

        <div class="bg-light">
            <h3 class="text-center">
                Zoro Store</h3>
            <p class="text-center">Shop smart, live well: where convenience meets quality.</p>
        </div>


        <!--fourth child-->
        <div class="row px-3">
            <div class="col md-10">
                <!-- Products-->
                <div class="row">
                    <!--fetching products-->
                    <?php
                    //calling function
                    search_products();
                       get_unique_catagories();
                       get_unique_brands();
                    ?>

                    <!--row end-->
                </div>
                <!--coloumn end -->
            </div>

            <div class="col-md-2 bg-secondary p-0">
                <!-- Brand to be displayed-->
                <ul class="navbar-nav me-auto text-center">
                    <li class="nav-item bg-info">
                        <a href="#" class="nav-link text-light">
                            <h4>Delivery Brands</h4>
                        </a>
                    </li>

                    <?php 
                      getbrands()
                    ?>
                </ul>
                <!-- Categories to be displayed-->
                <ul class="navbar-nav mar-auto text-center">
                    <li class="nav-item bg-info">
                        <a href="#" class="nav-link text-light">
                            <h4>Categories</h4>
                        </a>
                    </li>

                    <?php
                    getcategory()
                    ?>
                </ul>


            </div>
            <?php
            include("./includes/footer.php")
            ?>
        </div>
        <!--bootstrap js link-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</body>

</html>