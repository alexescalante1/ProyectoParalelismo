<?php

require_once "conexion.php";

class ModeloPlantilla{
	///Whit parametros -> static
	static public function mdlEstiloPlantilla($tabla){ /// Trae los items de $tabla

		$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla"); ///Selecciona los items

		$stmt -> execute(); ///ejecutamos el objeto

		return $stmt -> fetch();  ///Retornamos solo una linea ///varias fetchall

		$stmt -> close();

	}

}