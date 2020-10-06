<?php
    require_once ('../modelos/conexion.php');
    require_once ('../modelos/consultas.php');
    $mensaje = null;

    $nombre = $_POST['Nombre'];
    $comentario = $_POST['Comentario'];
    $fecha = $_POST['Fecha'];
   
  
    
        $consultas = new Consultas();
        $message= $consultas->insertarProducto($nombre, $comentario, $fecha);    
        
   
    echo $message;
?>