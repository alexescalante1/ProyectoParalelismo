<?php

require_once "../controladores/plantilla.controlador.php";
require_once "../modelos/plantilla.modelo.php";

class AjaxPlantilla{

	public function ajaxEstiloPlantilla(){

		$respuesta = ControladorPlantilla::ctrEstiloPlantilla();

		echo json_encode($respuesta); ///Json_encode == convierte el array en string ///Json_decode == convierte un string a array

	}

}

$objeto = new AjaxPlantilla();
$objeto -> ajaxEstiloPlantilla(); ///Ejecuta el metodo
