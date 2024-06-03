<h3 class="text-center text-success">All Products</h3>
<table class="table table-bordered mt-5">
    <thead class="bg-info">
        <tr>
            <th>Product ID</th>
            <th>Product Title</th>
            <th>Product Image</th>
            <th>Product Price</th>
            <th>Total Sold</th>
            <th>Status</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody class="bg-secondary text-light">
        <?php
        $get_products = "Select * from `products`";
        $result = mysqli_query($con, $get_products);
        $number = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $product_id = $row['product_id'];
            $product_title = $row['product_title'];
            $product_image1 = $row['product_image1'];
            $product_price = $row['product_price'];
            $status = $row['status'];
            $number++;
            ?>
            <tr class='text-center'>
                <td>
                    <?php echo $number; ?>
                </td>
                <td>
                    <?php echo $product_title; ?>
                </td>
                <td><img src='./product_images/<?php echo $product_image1; ?>' class='poduct_img' /></td>
                <td>
                    <?php echo $product_price; ?>/-
                </td>
                <td>
                    <?php
                    $get_count = "Select * from `orders_pending` where product_id=$product_id";
                    $result_count = mysqli_query($con, $get_count);
                    $rows_count = mysqli_num_rows($result_count);
                    echo $rows_count;
                    ?>
                </td>

                <td>
                    <?php echo $status; ?>
                </td>
                <td><a href='index.php?edit_products=<?php echo $product_id?>' class='text-light'><i class='fa-solid fa-pen-to-square'></i></a></td>
                <td><a href='index.php?delete_product=<?php echo $product_id?>' class='text-light' data-toggle="modal" data-target="#exampleModal_<?php echo $product_id ?>"><i class='fa-solid fa-trash'></i></a></td>
            </tr>
            <?php
        }
        ?>

    </tbody>
</table>

<!-- Modals -->
<?php
$result = mysqli_query($con, $get_products);
while ($row = mysqli_fetch_assoc($result)) {
    $product_id = $row['product_id'];
    ?>
    <div class="modal fade" id="exampleModal_<?php echo $product_id ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel_<?php echo $product_id ?>" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <h4>Are you sure you want to delete this?</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><a href="./index.php?view_products" class='text-light text-decoration-none'>No</a></button>
                    <button type="button" class="btn btn-primary"><a href='index.php?delete_product=<?php echo $product_id ?>' class="text-light text-decoration-none">Yes</a></button>
                </div>
            </div>
        </div>
    </div>
<?php
}
?>
