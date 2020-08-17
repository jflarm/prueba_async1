<?php 
	require_once '../core/config.php';
	
	$view = $_POST['view'];
	echo $view;
	echo file_get_contents('../../public/views/'.$view.'.php');
	
?>