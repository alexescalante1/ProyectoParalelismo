<?php
    include "conexion.php";
?>
<!DOCTYPE html>
<html>
<head>
    <title>VALORACION</title>
    <link rel="stylesheet" href="vistas/css/misEstilos.css">
    <link href="https://fonts.googleapis.com/css?family=Mukta+Vaani" rel="stylesheet">
    
    <link rel="stylesheet" href="<?php echo $url?>vistas/css/estilos.css">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

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
    <footer>
       
       <div class="container-footer-all">
        
            <div class="container-body">

                <div class="colum1">
                    <h1>Mas informacion de Mi Store</h1>

                    <p>Mi store es una tienda online dedicada a la venta de diferentes articulos. como tecnologia ropa y muhas cosas mas en diferentes variedades </p>

                </div>

                <div class="colum2">

                    <h1>Redes Sociales</h1>

                    <div class="row">
                        <img src="vistas/icon/facebook.png">
                        <label>Siguenos en Facebook</label>
                    </div>
                    <div class="row">
                        <img src="vistas/icon/twitter.png">
                        <label>Siguenos en Twitter</label>
                    </div>
                    <div class="row">
                        <img src="vistas/icon/instagram.png">
                        <label>Siguenos en Instagram</label>
                    </div>
                   

                </div>

                <div class="colum3">

                    <h1>Informacion Contactos</h1>

                    <div class="row2">
                        <img src="vistas/icon/house.png">
                        <label>Tiahuanaco,
                        numero 501 
                        Puno-Peru
                        Barrio Huajzapata</label>
                    </div>

                    <div class="row2">
                        <img src="vistas/icon/smartphone.png">
                        <label>+51 934 621 212</label>
                    </div>

                    <div class="row2">
                        <img src="vistas/icon/contact.png">
                         <label>mistore@gmail.com</label>
                    </div>

                </div>

            </div>
        
        </div>
        
        <div class="container-footer">
               <div class="footer">
                    <div class="copyright">
                        © 2020 Todos los Derechos Reservados | <a href="">MiStore</a>
                    </div>

                    <div class="information">
                        <a href="">Informacion Compañia</a> | <a href="">Privacion y Politica</a> | <a href="">Terminos y Condiciones</a>
                    </div>
                </div>

            </div>
        
    </footer>
</body>
</html>

<?php

require_once "controladores/plantilla.controlador.php";

require_once "modelos/rutas.php";

$plantilla = new ControladorPlantilla();
$plantilla -> plantilla();


