<?php 
	class controller_logout{
		public function __construct(){
			//huy session
			unset($_SESSION["c_username"]);
			header("location:admin.php");
		}
	}
	new controller_logout();
 ?>