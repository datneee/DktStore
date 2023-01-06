<div class="col-md-10 col-md-offset-1">
	<div style="margin-bottom: 5px;"><a href="admin.php?controller=add_edit_category_product&act=add" class="btn btn-primary">Add</a></div>
	<div class="panel panel-primary">
		<div class="panel-heading">category_product</div>
		<div class="panel-body">
			<table class="table table-hover table-bordered">
				<tr>
					<th>Tên danh mục</th>
					<th style="width: 200px;">Hiển thị trang chủ</th>
					<th style="width: 100px;">
					</th>
				</tr>
				<?php 
					foreach($arr as $rows)
					{
				 ?>
				<tr>
					<td><?php echo $rows->c_name; ?></td>
					<td style="text-align: center;">
						<?php if($rows->c_home == 1){ ?>
						<span class="glyphicon glyphicon-check"></span>
						<?php } ?>
					</td>
					<td style="text-align: center;">
						<a href="admin.php?controller=add_edit_category_product&act=edit&id=<?php echo $rows->pk_category_product_id; ?>">Edit</a>&nbsp;&nbsp;
						<a onclick="return window.confirm('Are you sure?');" href="admin.php?controller=category_product&act=delete&id=<?php echo $rows->pk_category_product_id; ?>">Delete</a>
					</td>
				</tr>
				<?php } ?>
			</table>
			<ul class="pagination" style="padding:0px; margin:0px;">
				<li><a href="#">Trang</a></li>
				<?php 
					for($i = 1; $i <= $num_page; $i++)
					{
				 ?>
				<li><a href="admin.php?controller=category_product&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
</div>