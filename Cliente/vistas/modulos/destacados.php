
<!--=============================================
BARRA DE PRODUCTOS GRID o LISTA "ORGANIZADOR"
=============================================-->

<?php

$titulosModulos = array("OFERTAS RELAMPAGO", "MEJOR VALORADOS");
$rutaModulos = array("ofertas-relampago","mejor-valorados");

$cantidad = 42;
$item = null;
$valor = null;

if($titulosModulos[0] == "OFERTAS RELAMPAGO"){

    $ordenar = "oferta";
    $ofertas = ControladorProductos::ctrMostrarProductos($ordenar, $item, $valor,$cantidad);

}

if($titulosModulos[1] == "MEJOR VALORADOS"){

    $ordenar = "valoracion";
    $valorados = ControladorProductos::ctrMostrarProductos($ordenar, $item, $valor,$cantidad);

}

$modulos = array($ofertas, $valorados);

for($i = 0; $i < 2; $i ++){

	echo '<div class="container-fluid well well-sm barraProductos">

			<div class="container">
				
				<div class="row">
					
					<div class="col-xs-12 organizarProductos">

						<div class="btn-group pull-right">

							 <button type="button" class="btn btn-default btnGrid backColor" id="btnGrid'.$i.'">
							 	
								<i class="fa fa-th" aria-hidden="true"></i>  

								<span class="col-xs-0 pull-right"> GRID</span>

							 </button>

							 <button type="button" class="btn btn-default btnList backColor" id="btnList'.$i.'">
							 	
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
					
							<h1><small>'.$titulosModulos[$i].' </small></h1>

						</div>

						<div class="col-sm-6 col-xs-12">
					
							<a href="'.$rutaModulos[$i].' ">
								
								<button class="btn btn-default backColor pull-right">
									
									VER MÁS <span class="fa fa-chevron-right"></span>

								</button>

							</a>

						</div>

					</div>

					<div class="clearfix"></div>

					<hr>

                </div>
                


				<ul class="grid'.$i.'">';

				foreach ($modulos[$i] as $key => $value) {
                    

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


				<ul class="list'.$i.'" style="display:none">';


				echo '</ul>

			</div>

		</div>';

}

?>
