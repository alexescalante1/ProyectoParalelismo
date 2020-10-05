<?php

class Conexion{

	public function conectar(){
		try{
			$linkBD = new PDO('mysql:host=localhost;dbname=paralelismo',
					'root','',
					array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
					PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") ///Trae y exporta los caracteres latinos
			  );
			echo "conexion OK";
		}catch(Exception $e){
			die('error: '. $e->getMessage());
		}
		
		return $linkBD;
			
	}


}



