<?php 
 

	require_once '../core/config.php';
 	$peticion = $_POST['peticion'];

 	// echo 'Respuesta capturada: '.$peticion;

 	if($peticion == 'productos_nuevos'){

 		// Llamamos a la funcion que ejecuta el query y le pasamos el query para
 		// productos nuevos
 		$new_products = executeQuery('select * from productos where nuevo = 1');

 		// Se devuelve un json con los datos resultantes de la consulta
 		echo json_encode(array('data'=>$new_products, 'peticion'=>'productos_nuevos'));
 		}

 		sleep(2);
 		echo json_encode(array('data'=>$data, 'peticion'=>'productos_nuevos'));

 	}elseif($peticion == 'productos_destacados'){

 		$sql = 'select * from productos where nuevo != 1 order by vendidos desc limit 6';
 		$result = mysqli_query($connection, $sql);
 		$data = [];

 		while($temp = mysqli_fetch_assoc($result)){
 			array_push($data, $temp);
 		}

 		sleep(2);
 		echo json_encode(array('data'=>$data, 'peticion'=>'productos_destacados'));
 	}elseif ($peticion == 'buscar') {
 		echo json_encode(array('data'=>$_POST['valor'], 'peticion'=>'buscar'));
 	}
 	
 	// Functions

 	function executeQuery($query){
 		$sql = '$query;
 		$result = mysqli_query($connection, $sql);
 		$data=[];

 		// print_r ($connection);
 		while($temp =  mysqli_fetch_assoc($result)){
 			array_push($data, $temp);
 		}

 		return $data;
 	}


 ?>