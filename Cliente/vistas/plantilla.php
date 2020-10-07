<!DOCTYPE html>
<html lang="es">
<head>

	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<meta name="title" content="Tienda Virtual">

	<meta name="description" content="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam accusantium enim esse eos officiis sit officia">

	<meta name="keyword" content="Lorem ipsum, dolor sit amet, consectetur, adipisicing, elit, Quisquam, accusantium, enim, esse">

	<title>Tienda Virtual</title>

	<?php

		$url = Ruta::ctrRuta();

		$servidor = Ruta::ctrRutaServidor();

		$urlGitHub = Ruta::ctrRutaGitHub();

		$urlSoporteCliente = Ruta::ctrRutaSoporteCliente();

	?>

	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">

	<link href="https://fonts.googleapis.com/css?family=Ubuntu|Ubuntu+Condensed" rel="stylesheet">

	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/plugins/bootstrapM.min.css">

	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/plugins/font-awesome.min.css">

	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/misEstilos.css">

	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/footerEstilos.css">

	<script src="<?php echo $url; ?>vistas/js/plugins/jquery.min.js"></script>

	<script src="<?php echo $url; ?>vistas/js/plugins/bootstrap.min.js"></script>

</head>

<body>

<?php

/*=============================================
Cabezote
=============================================*/

include "modulos/cabezote.php";

/*=============================================
LISTA BLANCA DE URLS AMIGABLES (DINAMICO)
=============================================*/

$rutas = array(); ///Declarando como base array
$ruta = null;

if(isset($_GET["ruta"])){ ///Isset Evalua si vienen variables get o Post

	//echo $_GET["ruta"];

	$rutas = explode("/", $_GET["ruta"]);  ///separa los indices

	//var_dump($rutas);

	$item = "ruta"; ///item == Name de seccion de la tabla
	$valor =  $rutas[0];
	
	/*=============================================
	lista de URLS (subcategoria)
	=============================================*/

	$rutaSubCategorias = ControladorProductos::ctrMostrarSubCategorias($item, $valor);

	///        Tabla               clave    elemento
	foreach ($rutaSubCategorias as $key => $value) {  ///Recorre el array

		if($rutas['0'] == $value["ruta"]){

			$ruta = $rutas['0'];

		}

	}

	if($ruta == null){

		/*=============================================
		lista de URLS amigables (categoria) 
		=============================================*/

		$rutaCategorias = ControladorProductos::ctrMostrarCategorias($item, $valor);
		
		if($rutas['0'] == $rutaCategorias["ruta"]){

				$ruta = $rutas['0'];

		}

	}

	/*=============================================
	Traer los datos requeridos
	=============================================*/

	if($ruta != null){

		/*include "modulos/productos.php";*/
		
		include "modulos/destacados.php";

	}else{

		include "modulos/error404.php";

	}

}else{

	include "modulos/accesoRapidoPortada.php";
	
	include "modulos/portadaTienda.php";
	
	include "modulos/destacados.php";
	include "modulos/destacados.php";
	include "modulos/destacados.php";
	include "modulos/destacados.php";
	
}

echo "<br><br><br>";

	include "modulos/footer.php";

?>

<script src="<?php echo $url; ?>vistas/js/misScripts.js"></script>

</body>
</html>