<div class="special-collection">
    <div class="tabs-container">
        <div class="clearfix">
            <h2>Sản phẩm nổi bật</h2>
        </div>
    </div>
    <div class="tabs-content row">
        <div id="content-tabb1" class="content-tab content-tab-proindex" style="display:none">
            <div class="clearfix">
                <?php
                foreach($arr as $rows)
                {
                    ?>
                    <div class="col-xs-6 col-md-3 col-sm-6 ">
                        <div class="product-grid" id="product-1168979">
                            <div class="image">
                                <a href="">
                                    <?php if($rows->c_img != "" && file_exists("public/upload/product/".$rows->c_img)){ ?>
                                        <img title="Sản phẩm ..." alt="Sản phẩm 2" class="img-responsive" src="public/upload/product/<?php echo $rows->c_img; ?>" style="max-width: 100px;">
                                    <?php } ?>
                                </a>
                            </div>
                            <div class="info">
                                <h3 class="name"><a href="index.php?controller=product_detail&id=5"><?php echo $rows->c_name; ?></a></h3>
                                <p class="price-box"> <span class="special-price"> <span class="price product-price"> <?php echo $rows->c_price; ?> </span> </span> </p>
                                <div class="action-btn">
                                    <form action="cart/add" method="post" enctype="multipart/form-data" id="product-actions-1168979">
                                        <a href="index.php?controller=product_detail&id=<?php echo $rows->pk_product_id ?>" class="button">Chọn sản phẩm</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                <?php } ?>
                <!-- end box product -->
                <!-- paging -->
                <div style="clear: both;"></div>
                <ul class="pagination pull-right" style="margin-top: 0px !important; padding-right: 15px;">
                    <li><a href="#">Trang</a></li>
                    <?php
                    for($i = 1; $i <= $num_page; $i++)
                    {
                        ?>
                        <li><a href="index.php?controller=product&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
                    <?php } ?>
                </ul>
                <!-- end box product -->

            </div>
        </div>
    </div>
</div>

