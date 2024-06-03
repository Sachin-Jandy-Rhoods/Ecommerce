<?php
if (isset($_GET['delete_order'])) {
    $delete_order_id = $_GET['delete_order'];
    $delete_query = "DELETE FROM `user_orders` WHERE order_id = $delete_order_id";
    $result = mysqli_query($con, $delete_query);
    if ($result) {
        echo "<script>alert('Order has been deleted successfully.')</script>";
        echo "<script>window.open('index.php?list_orders', '_self')</script>";
    } else {
        echo "<script>alert('Failed to delete order.')</script>";
    }
}
?>
