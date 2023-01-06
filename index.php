<?php
    //start session
    //session_start();
    //load file config
    include "config.php";
    //load model
    include "application/model.php";
    //load controller
    include "application/controller.php";

    //lay controller de gan thanh file vat ly. VD: controller=logout -> se gan thanh duong dan: controller_logout.php
    $controller = isset($_GET["controller"]) ? $_GET["controller"] : "home";
    //gan thanh duong dan vat ly
    $controller = ($controller != "") ? "controller_$controller.php" : "";
    //load layout admin




    include "view/frontend/view_layout.php";

    /*include 'Model/DBConfig.php';
    $db  = new Database();
    $db->connect();*/

?>
