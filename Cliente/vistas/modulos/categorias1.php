
<!--=============================================
BARRA DE PRODUCTOS GRID o LISTA "ORGANIZADOR"
=============================================-->

<?php

$titulosModulo = "ROPA";

$cantidad = 12;
$item = null;
$valor = null;

$ordenar = "id_categoria";
$ofertas = ControladorProductos::ctrMostrarProductos($ordenar, $item, $valor,$cantidad);

echo '<div class="container-fluid well well-sm barraProductos">

    <div class="container">
        
        <div class="row">
            
            <div class="col-xs-12 organizarProductos">

                <div class="btn-group pull-right">

                        <button type="button" class="btn btn-default btnGrid backColor" id="btnGrid0">
                        
                        <i class="fa fa-th" aria-hidden="true"></i>  

                        <span class="col-xs-0 pull-right"> GRID</span>

                        </button>

                        <button type="button" class="btn btn-default btnList backColor" id="btnList0">
                        
                        <i class="fa fa-list" aria-hidden="true"></i> 

                        <span class="col-xs-0 pull-right"> LIST</span>

                        </button>
                    
                </div>		

            </div>

        </div>

    </div>

</div>


<div class="container-fluid productos">

    <div class="container">

        <div class="row">

            <div class="col-xs-12 tituloDestacado">

                <div class="col-sm-6 col-xs-12">
            
                    <h1><small>'.$titulosModulo.' </small></h1>

                </div>

            </div>

            <div class="clearfix"></div>

            <hr>

        </div>
        


        <ul class="grid0">';

        foreach ($ofertas as $key => $value) {
            

            echo '<li class="col-md-2 col-sm-4 col-xs-6">

                    <figure>
                        
                        <a href="'.$value["ruta"].'" class="pixelProducto">
                            
                            <img src="'.$servidor.$value["portada"].'" class="img-responsive">

                        </a>

                    </figure>

                    <h4>
            
                        <small>
                            
                            <a href="'.$value["ruta"].'" class="pixelProducto">
                                
                                '.$value["titulo"].'

                                <span> </span>';

                            echo '</a>

                        </small>			

                    </h4>

                    <div class="col-xs-6 precio">';
                    

                    if($value["oferta"] != 0){

                        echo '<h2>

                                <small class = "PecioSolesProducto">
            
                                    <strong>'.$value["precio"].'</strong>

                                </small>

                            </h2>';

                    }else{

                        echo '<h2><small class = "PecioSolesProducto">'.$value["precio"].'</small></h2>';

                    }
                    

                    echo '</div>

                    <!--=============================================-->

                    <div class = "col-xs-6 enlaces">
                        
                        <div class = "btn-group pull-right">
                            
                            <button type = "button" class = "btn btn-default btn-xs deseos" idProducto = "470" data-toggle = "tooltip" title = "Agregar a mi lista de deseos">
                                
                                <i class = "fa fa-heart"></i>
                            
                            </button>

                            <a href="#" class = "pixelProducto">

                                <button type = "button" class = "btn btn-default btn-xs" data-toggle = "tooltip" title = "Ver Productos">
                                    
                                    <i class = "fa fa-eye" aria-hidden = "true"></i>

                                </button>

                            </a>

                        </div>

                    </div>

                    <!--=============================================-->
                    

                </li>';
        }

        echo '</ul>


        <ul class="list0" style="display:none">';


        echo '</ul>

    </div>

</div>';



?>
