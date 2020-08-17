<?php 
 
    //  3 lineas muestran errores de PHP en el browser
 //    ini_set('display_errors', 1);
 //    ini_set('display_startup_errors', 1);
	// error_reporting(E_ALL);

	require_once '../core/config.php';
 	$peticion = $_POST['peticion'];

 	// echo 'Respuesta capturada: '.$peticion;

 	if($peticion == 'productos_nuevos'){

 		// Llamamos a la funcion que ejecuta el query y le pasamos el query para
 		// productos nuevos
 		$new_products = executeQuery('select * from productos where nuevo = 1', $connection);

 		// Se devuelve un json con los datos resultantes de la consulta
 		echo json_encode(array('data'=>$new_products, 'peticion'=>'productos_nuevos'));
 		
  	}elseif($peticion == 'productos_destacados'){

 		$top_products =  executeQuery('select * from productos where nuevo != 1 order by vendidos desc limit 6', $connection);
 		
 		echo json_encode(array('data'=>$top_products, 'peticion'=>'productos_destacados'));
 		

 	}elseif ($peticion == 'buscar') {

 		$valor = $_POST['valor'];

 		$buscar_productos = executeQuery('select * from productos where nombre_producto like "%'.$valor.'%" ', $connection);
 		echo json_encode(array('data'=>$buscar_productos, 'peticion'=>'buscar'));
 	}
 	
 	// Functions

 	function executeQuery($query, $connection){
 		$result = mysqli_query($connection, $query);
 		$data=[];

 		// print_r ($connection);
 		while($temp =  mysqli_fetch_assoc($result)){
 			array_push($data, $temp);
 		}

 		return $data;
 	}


 ?>