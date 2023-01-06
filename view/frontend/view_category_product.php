<?php
foreach ($arr as $rows) {
    ?>
    <li><a href="index.php?controller=product&act=category&id=<?php echo $rows-> pk_category_product_id ?>&name=<?php echo $rows->c_name; ?>"><?php echo $rows->c_name ?></a></li>

<?php } ?>


