<?php
	//start session
	session_start();
	//load file config
	include "config.php";
	//load model
	include "application/model.php";
	//load controller
	include "application/controller.php";

	//kiem tra, neu user chua dang nhap thi yeu cau dang nhap. Neu user da dang nhap thi load layout admin
	if(isset($_SESSION["c_username"]) == false){
		//load mvc login
        $controller = isset($_GET["controller"]) && $_GET["controller"] == "register" ? $_GET["controller"]:"login";
		include "controller/backend/controller_$controller.php";
	}else{
		//lay controller de gan thanh file vat ly. VD: controller=logout -> se gan thanh duong dan: controller_logout.php
		$controller = isset($_GET["controller"])?$_GET["controller"]:"home";
		//gan thanh duong dan vat ly
		$controller = ($controller!="")?"controller_$controller.php":"";
		//load layout admin
		include "view/backend/view_layout.php";
	}
