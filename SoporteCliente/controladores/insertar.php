<?php
    require_once ('../modelos/conexion.php');
    require_once ('../modelos/consulta.php');
    $mensaje = null;

    $nombre = $_POST['nombre'];
    $correo = $_POST['correo'];
    $numero = $_POST['numero'];
    $mensaje = $_POST['mensaje'];
  
    
        $consultas = new Consultas();
        $message= $consultas->insertarProducto($nombre, $correo, $numero, $mensaje);    
        
   
    echo $message;
?>