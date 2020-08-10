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

 	}elseif($peticion == 'productos_destacados'){

 		$sql = 'select * from productos order by vendido desc limit 6';
 		$result = mysqli_query($connection, $sql);
 		$data = [];

 		while($temp = mysqli_fetch_assoc($result)){
 			array_push($data, $temp);
 		}

 		echo json_encode(array('data'=>$data));
 	}
 	



 ?>