<?php
    class Consultas{
        public function insertarProducto($nombre, $comentario, $fecha){
            $modelos = new Conexion();
            $conexion = $modelos->conectar();//pasamos la conexcion a la variable
            $sql = "INSERT into comentario (Nombre, Comentario, Fecha)
            values(:Nombre, :Comentario, :Fecha)";
            $estado = $conexion->prepare($sql);//preparamos la conexion
            $estado->bindParam(':Nombre', $nombre);
            $estado->bindParam(':Comentario', $comentario);
            $estado->bindParam(':Fecha', $fecha);
          
            if (!$estado) {//si exite o no existe.
                return "error al crear el registro";
            }else {
                $estado->execute();
                return "Registro creado correctamente";
            }
        }

        public function CargarProdcuto(){
            $rows= null;
            $modelo = new Conexion();//creamos un objeto de conexion
            $conexion =$modelo->conectar;
            $sql= "SELECT * FROM comentario";
            $estado = $conexion->prepare($sql);//preparamos la consulta
            $estado->execute();//ejecutasmo
            while ($result = $estado->fetch()) {//recorremos cada fila 
                $rows[]=$result;//guarda los en cada espacion
            }
            return $rows;

        }
        
                
    }
?>