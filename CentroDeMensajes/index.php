<?php
    include "conexion.php"
?>
<!DOCTYPE html>
<html>
<head>
    <title>VALORACION</title>
    <link rel="stylesheet" href="vistas/css/misEstilos.css">
    <link href="https://fonts.googleapis.com/css?family=Mukta+Vaani" rel="stylesheet">
</head>
<body>
    <div id="contenedor">
        <div id="caja-comentar">
            <div id="chat">
            <?php
                $consulta="SELECT * FROM comentario ORDER BY id DESC";
                $ejecutar = $conexion->query($consulta);
                while($fila = $ejecutar->fetch_array()):
            ?>
                <div id="datos-chat">
                    <span style="color: #1c62c4;"><?php echo $fila['Nombre'];?>:</span>
                    <span style="color: #848484;"><?php echo $fila['Comentario'];?></span>
                    <span style="float: right;"><?php  echo $fila['Fecha'];?></span>
                </div>
                <?php endwhile;
                ?>
            </div>
        </div>
        <form method="POST" action="controladores/insertar.php">
            <input type="text" name="nombre" placeholder="Ingresa tu nombre">
            <textarea name="mensaje" placeholder="Ingresa mensaje"></textarea>
            <input type="submit" name="envia" value="Enviar">
        </form>
    </div>    

</body>
</html>

<?php

require_once "controladores/plantilla.controlador.php";

require_once "modelos/rutas.php";

$plantilla = new ControladorPlantilla();
$plantilla -> plantilla();


