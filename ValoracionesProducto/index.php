<?php
    include "conexion.php";
?>
<!DOCTYPE html>
<html>
<head>
    <title>VALORACION</title>
    <link rel="stylesheet" href="vistas/css/misEstilos.css">
    <link href="https://fonts.googleapis.com/css?family=Mukta+Vaani" rel="stylesheet">
    
    <script type="text/javascript">
        function ajax(){
            var req= new XMLHttpRequest();

            req.onreadystatechange = function(){
                if( req.readyState == 4 && req.status ==200){
                    document.getElementById('chat').innerHTML = req.responseText;

                }
            }
            req.open('GET','chat.php',true);
            req.send();
        }
        //linea que se refresque la pagina cada segundo 
        setInterval(function(){ajax();},1000 );
    </script>

</head>
<body onload = "ajax();">
    <div id="contenedor">
        <div id="caja-comentar">
            <div id="chat"></div>
        </div>
        <form method="POST" action="controladores/insertar.php">
            <input type="text" name="nombre" placeholder="Ingresa tu nombre">
            <textarea name="mensaje" placeholder="Ingresa mensaje"></textarea>
            <input type="submit" name="envia" value="Enviar">
        </form>
        
        <?php
            if (isset($_POST['envia'])){
                $nombre = $_POST['nombre'];
                $mensaje = $_POST['mensaje'];

                $consulta="INSERT INTO comentario (Nombre, Comentario) VALUES ('$nombre','$mensaje')";
                $ejecutar = $conexion->query($consulta);
                
                if ($ejecutar){
                    echo "<embed loop='false' src='bood.mp3' hidden='true' autoplay='true'>";
                }    
            }
        ?>
    </div>    

</body>
</html>

<?php

require_once "controladores/plantilla.controlador.php";

require_once "modelos/rutas.php";

$plantilla = new ControladorPlantilla();
$plantilla -> plantilla();


