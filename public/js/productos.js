$(document).ready(function(){
	productosNuevos()
})


//  Funciones

function mostrar_producto(arg){
	$('#nombre_producto').html(arg.nombre_producto)
	$('#modelo_producto').html(arg.modelo_producto)
	$('#imagen_producto').attr('src',arg.imagen_producto)
	$('#descripcion_producto').html(arg.descripcion_producto)
}


// Funcion para mostrar productos nuevos

function productosNuevos(){
	$.ajax({
		url: 'app/controllers/controller_productos.php',
		type: 'POST',
		data: {
			peticion: 'productos_nuevos'
		},
		success: function(response){
			
			
			let result = JSON.parse(response)
			let i = 0

			mostrar_producto({
				nombre_producto: result.data[i].nombre_producto,
				modelo_producto: result.data[i].modelo,
				imagen_producto: result.data[i].imagen_producto,
				descripcion_producto: result.data[i].descripcion
			})
			$('#new_item_link').show()

			setInterval(function(){

				mostrar_producto({
					nombre_producto: result.data[i].nombre_producto,
					modelo_producto: result.data[i].modelo,
					imagen_producto: result.data[i].imagen_producto,
					descripcion_producto: result.data[i].descripcion
				})				

				if(i == result.data.length - 1){
					i = 0
				}else{
					i++
				}
			}, 5000)

		},

		error: function( jqXHR, textStatus, errorThrown){
			console.log(textStatus+' '+errorThrown)
		},
		complete: function(){
			console.log('Completado.')

		},
		beforeSend: function(){

			mostrar_producto({
					nombre_producto: 'Cargando...',
					modelo_producto: 'Nuestros nuevos productos...',
					imagen_producto: 'https://i.pinimg.com/originals/1c/49/2e/1c492eb6e1d085b2fa32302ecd6f8343.gif',
					descripcion_producto: 'Estos son nuestros nuevos productos'
				})
			$('#new_item_link').hide()
		}
	})

}