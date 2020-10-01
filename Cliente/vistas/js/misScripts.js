/*=============================================
PLANTILLA
=============================================*/

$.ajax({

	url:"ajax/plantilla.ajax.php",
	success:function(respuesta){

		//console.log(JSON.parse(respuesta).colorFondo);

		var colorFondo = JSON.parse(respuesta).colorFondo;
		var colorTexto = JSON.parse(respuesta).colorTexto;
		var barraSuperior = JSON.parse(respuesta).barraSuperior;
		var textoSuperior = JSON.parse(respuesta).textoSuperior;
		
		$(".backColor, .backColor a").css({"background": colorFondo, ///LLama las clases css y cambia el valor
											"color": colorTexto})

		$(".barraSuperior, .barraSuperior a").css({"background": barraSuperior, 
			                                       "color": textoSuperior})

	}

})

/*=============================================
MUESTRA LAS CATEGORIAS OCULTAS
=============================================*/

$("#btnCategorias").click(function(){


	$("#cabezote").after($("#categorias").slideToggle("fast"))

})