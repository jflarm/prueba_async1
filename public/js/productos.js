$(document).ready(function(){
	lista_productos('productos_nuevos')
	lista_productos('productos_destacados')
})


//  Funciones

function mostrar_productos_nuevos(arg){
	$('#nombre_producto').html(arg.nombre_producto)
	$('#modelo_producto').html(arg.modelo_producto)
	$('#imagen_producto').attr('src',arg.imagen_producto)
	$('#descripcion_producto').html(arg.descripcion_producto)
}

function mostrar_productos_destacados(argL, argR){

	$('#nombre_producto_left').html(argL.nombre_producto)
	$('#modelo_producto_left').html(argL.modelo_producto)
	$('#imagen_producto_left').attr('src',argL.imagen_producto)
	$('#descripcion_producto_left').html(argL.descripcion_producto)
	$('#precio_producto_left').html(argL.precio)

	$('#nombre_producto_right').html(argR.nombre_producto)
	$('#modelo_producto_right').html(argR.modelo_producto)
	$('#imagen_producto_right').attr('src',argR.imagen_producto)
	$('#descripcion_producto_right').html(argR.descripcion_producto)
	$('#precio_producto_right').html(argR.precio)
}

// Funcion para mostrar productos nuevos

function lista_productos(peticion){
	$.ajax({
		url: 'app/controllers/controller_productos.php',
		type: 'POST',
		data: {
			peticion: peticion
		},
		success: function(response){
			
			let result = JSON.parse(response)
			let i = 0
			let temp = 0
			let intervalo = null

			if(result.peticion == 'productos_nuevos'){

				intervalo = 6000

				mostrar_productos_nuevos({
					nombre_producto: result.data[i].nombre_producto,
					modelo_producto: result.data[i].modelo,
					imagen_producto: result.data[i].imagen_producto,
					descripcion_producto: result.data[i].descripcion
				})
				$('#new_item_link').show()

			}else if(result.peticion == 'productos_destacados'){
				
				if(temp+1  == result.data.length){
					temp = i-1
				}else{
					temp = i+1
				}

				intervalo = 3000

				mostrar_productos_destacados({
					nombre_producto: result.data[i].nombre_producto,
					modelo_producto: result.data[i].modelo,
					imagen_producto: result.data[i].imagen_producto,
					descripcion_producto: result.data[i].descripcion,
					precio: result.data[i].precio
				},{
					nombre_producto: result.data[temp].nombre_producto,
					modelo_producto: result.data[temp].modelo,
					imagen_producto: result.data[temp].imagen_producto,
					descripcion_producto: result.data[temp].descripcion,
					precio: result.data[temp].precio
				})
			}

			

			setInterval(function(){

				if(result.peticion == 'productos_nuevos'){
					mostrar_productos_nuevos({
						nombre_producto: result.data[i].nombre_producto,
						modelo_producto: result.data[i].modelo,
						imagen_producto: result.data[i].imagen_producto,
						descripcion_producto: result.data[i].descripcion
					})
					$('#new_item_link').show()

				}else if(result.peticion == 'productos_destacados'){
					
					temp = i
					if(temp+1 == result.data.length){
						temp = i-1
					}else{
						temp = i+1
					}
					mostrar_productos_destacados({
						nombre_producto: result.data[i].nombre_producto,
						modelo_producto: result.data[i].modelo,
						imagen_producto: result.data[i].imagen_producto,
						descripcion_producto: result.data[i].descripcion,
						precio: result.data[i].precio
					},{
						nombre_producto: result.data[temp].nombre_producto,
						modelo_producto: result.data[temp].modelo,
						imagen_producto: result.data[temp].imagen_producto,
						descripcion_producto: result.data[temp].descripcion,
						precio: result.data[temp].precio
					})
				}
				if(i == result.data.length - 1){
					i = 0
				}else{
					i++
				}
			}, intervalo)

		},

		error: function( jqXHR, textStatus, errorThrown){
			console.log(textStatus+' '+errorThrown)
		},
		complete: function(){
			console.log('Completado.')

		},
		beforeSend: function(){

			mostrar_productos_nuevos({
					nombre_producto: 'Cargando...',
					modelo_producto: 'Nuestros nuevos productos...',
					imagen_producto: 'https://i.pinimg.com/originals/1c/49/2e/1c492eb6e1d085b2fa32302ecd6f8343.gif',
					descripcion_producto: 'Estos son nuestros nuevos productos'
				})
			$('#new_item_link').hide()

			mostrar_productos_destacados({
				nombre_producto: 'Cargando...',
				modelo_producto: 'Nuestros nuevos productos...',
				imagen_producto: 'https://i.pinimg.com/originals/1c/49/2e/1c492eb6e1d085b2fa32302ecd6f8343.gif',
				descripcion_producto: 'Estos son nuestros nuevos productos',
				precio: ''
			},{
				nombre_producto: 'Cargando...',
				modelo_producto: 'Nuestros nuevos productos...',
				imagen_producto: 'https://i.pinimg.com/originals/1c/49/2e/1c492eb6e1d085b2fa32302ecd6f8343.gif',
				descripcion_producto: 'Estos son nuestros nuevos productos',
				precio: ''
			})

		}

	})
}