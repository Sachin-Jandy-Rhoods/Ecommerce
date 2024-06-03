<?php
include ('../includes/connect.php');
include ('../functions\common_function.php');
session_start();

// Check if admin is logged in
if (isset($_SESSION['admin_username'])) {
    $admin_username = $_SESSION['admin_username'];
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!--bootstrap css link-->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!--css link-->
    <link rel="stylesheet" href="../style.css">
    <!--font awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        

    <style>
        .admin_img {
            width: 100px;
            object-fit: contain;
        }

        .footer {
            position: absolute;
            bottom: 0;
        }
        body{
            overflow-x: hidden;
        }
        .poduct_img{
            width: 100px;
            object-fit: contain;

        }
    </style>
</head>

<body>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-info">
        <div class="container-fluid">
            <img src="../Image\Z-logo.png" alt="" class="logo">
            <nav class="navbar navbar-expand-lg">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Welcome <?php echo isset($admin_username) ? $admin_username : 'Admin'; ?></a>
                    </li>
                </ul>
            </nav>
        </div>
    </nav>
    <!-- Manage Details -->
    <div class="bg-light">
        <h3 class="text-center p-2">Manage Details</h3>
    </div>
    <div class="row">
        <div class="col-md-12 bg-secondary p-1 d-flex align-items-center">
            <div class="px-5">
                <a href="#"><img src="../Image\Fruits\cherry-1.jpeg" alt="" class="admin_img"></a>
                <p class="text-light text-center">Admin <?php echo isset($admin_username) ? $admin_username : 'Admin'; ?></p>
            </div>
                <div class="button text-center">
                    <button class="my-3"><a href="insert_product.php" class="nav-link text-light bg-info my-1">Insert Product</a></button>
                    <button><a href="index.php?view_products" class="nav-link text-light bg-info my-1">View Products</a></button>
                    <button><a href="index.php?insert_categories" class="nav-link text-light bg-info my-1">Insert Categories</a></button>
                    <button><a href="index.php?view_categories" class="nav-link text-light bg-info my-1">View Categories</a></button>
                    <button><a href="index.php?insert_brands" class="nav-link text-light bg-info my-1">Insert Brands</a></button>
                    <button><a href="index.php?view_brands" class="nav-link text-light bg-info my-1">View Brands</a></button>
                    <button><a href="index.php?list_orders" class="nav-link text-light bg-info my-1">All Orders</a></button>
                    <button><a href="logout.php" class="nav-link text-light bg-info my-1">Logout</a></button>
                </div>
            </div>

        </div>
        <!--fourth child-->
        <div class="container my-3">
            <?php
            if (isset ($_GET['insert_categories'])) {
                include ('insert_categories.php');
            }
            if (isset ($_GET['insert_brands'])) {
                include ('insert_brands.php');
            }
            if (isset ($_GET['view_products'])) {
                include ('view_products.php');
            }
            if (isset ($_GET['edit_products'])) {
                include ('edit_products.php');
            }
            if (isset ($_GET['delete_product'])) {
                include ('delete_product.php');
            }
            if (isset ($_GET['view_categories'])) {
                include ('view_categories.php');
            }
            if (isset ($_GET['view_brands'])) {
                include ('view_brands.php');
            }
            if (isset ($_GET['edit_category'])) {
                include ('edit_category.php');
            }
            if (isset ($_GET['edit_brands'])) {
                include ('edit_brands.php');
            }
            if (isset ($_GET['delete_brands'])) {
                include ('delete_brands.php');
            }
            if (isset ($_GET['delete_category'])) {
                include ('delete_category.php');
            }
            if (isset ($_GET['list_orders'])) {
                include ('list_orders.php');
            }
            if (isset ($_GET['delete_order'])) {
                include ('delete_order.php');
            }
            
            ?>
        </div>
    </div>
    <!--bootstrap css link-->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>

</html>