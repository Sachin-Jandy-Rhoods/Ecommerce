<h3 class="text-center text-success">All Categories</h3>
<table class="table table-bordered mt-5">
    <thead class="bg-info">
        <tr class="text-center">
            <th>Slno</th>
            <th>Category title</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody class="bg-secondary text-light">
        <?php
        $select_cat = "SELECT * FROM `categories`";
        $result = mysqli_query($con, $select_cat);
        $number = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $category_id = $row['category_id'];
            $category_title = $row['category_title'];
            $number++;
            ?>
            <tr class="text-center">
                <td><?php echo $number; ?></td>
                <td><?php echo $category_title; ?></td>
                <td><a href='index.php?edit_category=<?php echo $category_id ?>' class='text-light'><i class='fa-solid fa-pen-to-square'></i></a></td>
                <td><a href='index.php?delete_category=<?php echo $category_id ?>' class='text-light' data-toggle="modal" data-target="#exampleModal_<?php echo $category_id ?>"><i class='fa-solid fa-trash'></i></a></td>
            </tr>
            <?php
        }
        ?>
    </tbody>
</table>

<!-- Modals -->
<?php
$result = mysqli_query($con, $select_cat);
while ($row = mysqli_fetch_assoc($result)) {
    $category_id = $row['category_id'];
    ?>
    <div class="modal fade" id="exampleModal_<?php echo $category_id ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel_<?php echo $category_id ?>" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <h4>Are you sure you want to delete this?</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><a href="./index.php?view_categories" class='text-light text-decoration-none'>No</a></button>
                    <button type="button" class="btn btn-primary"><a href='index.php?delete_category=<?php echo $category_id ?>' class="text-light text-decoration-none">Yes</a></button>
                </div>
            </div>
        </div>
    </div>
<?php
}
?>
