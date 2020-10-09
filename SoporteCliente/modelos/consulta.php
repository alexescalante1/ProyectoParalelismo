<?php
    class Consultas{
        public function insertarProducto($Nombre, $Correo, $Numero, $Mensaje){
            $modelos = new Conexion();
            $conexion = $modelos->conectar();//pasamos la conexcion a la variable
            $sql = "INSERT into informacion (nombre, correo, numero, mensaje)
            values(:nombre, :correo, :numero, :mensaje)";
            $estado = $conexion->prepare($sql);//preparamos la conexion
            $estado->bindParam(':nombre', $Nombre);
            $estado->bindParam(':correo', $Correo);
            $estado->bindParam(':numero', $Numero);
            $estado->bindParam(':mensaje',$Mensaje);
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
            $sql= "SELECT * FROM informacion";
            $estado = $conexion->prepare($sql);//preparamos la consulta
            $estado->execute();//ejecutasmo
            while ($result = $estado->fetch()) {//recorremos cada fila 
                $rows[]=$result;//guarda los en cada espacion
            }
            return $rows;

        }
                
    }
?>