<?php 
	
	// Ruta de proyecto
	define('APP_ROOT', 'http://192.168.122.215/prueba_async1');


	// Constantes de conexion
	define('HOST', 'localhost');
	define('USER_DB', 'root');
	define('PASS_DB', '@lun3wSys');
	define('DB_NAME', 'ferreteria');

	// Variable constante de conexion
	$connection = mysqli_connect(HOST, USER_DB, PASS_DB, DB_NAME);

?>