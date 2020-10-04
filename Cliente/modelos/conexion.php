<?php

class Conexion{

	public function conectar(){
		
		$link = new PDO("mysql:host=localhost;dbname=mistore",
						"root", ///User
						"",     ///Pass
						array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
		                      PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") ///Trae y exporta los caracteres latinos
						);
		
		return $link;
		
	}
	
}