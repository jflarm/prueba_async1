<?php 
 
	require_once '../core/config.php';
 	$peticion = $_POST['peticion'];

 	// echo 'Respuesta capturada: '.$peticion;

 	if($peticion == 'productos_nuevos'){
 		$sql = 'select * from productos where nuevo = 1';
 		$result = mysqli_query($connection, $sql);
 		$data=[];

 		// print_r ($connection);
 		while($temp =  mysqli_fetch_assoc($result)){
 			array_push($data, $temp);
 		}

 		sleep(4);
 		echo json_encode(array('data'=>$data));
 	}
 ?>