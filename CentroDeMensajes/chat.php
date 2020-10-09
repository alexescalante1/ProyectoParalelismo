<?php
    include "conexion.php";
    $consulta="SELECT * FROM comentario ORDER BY id DESC";
    $ejecutar = $conexion->query($consulta);
    while($fila = $ejecutar->fetch_array()):
    ?>
    <div id="datos-chat">
        <span style="color: #1c62c4;"><?php echo $fila['Nombre'];?>:</span>
        <span style="color: #848484;"><?php echo $fila['Comentario'];?></span>
        <span style="float: right;"><?php  echo formatearFecha($fila['Fecha']);?></span>
    </div>
<?php endwhile;
                ?>