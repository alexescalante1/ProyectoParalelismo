<nav class="navbar navbar-inverse">

  <div class="container container-fluid">

    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
	
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
		  <li class="dropdown">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Ayuda <span class="caret"></span></a>
		  <ul class="dropdown-menu">
			<li><a href="<?php echo $urlSoporteCliente; ?>">Contactanos, por favor ya no tenemos clientes</a></li>
			<li role="separator" class="divider"></li>
			<li><a href="#">Reporte de errores</a></li>
			<li><a href="#">Disputas</a></li>
		  </ul>
		</li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">

		
		<li><a href="#">Cupones</a></li>

		<li><a href="#">Lista de Deseos</a></li>
		
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Identificate <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Login</a></li>
            <li><a href="#">Registrate</a></li>
            <li role="separator" class="divider"></li>
			<li><a href="#">Mis Ordenes</a></li>
			<li><a href="#">Mi Lista de Deseos</a></li>
			<li><a href="#">Mis Tiendas Fabotritas</a></li>
			<li><a href="#">Mis Cupones</a></li>
          </ul>
		</li>
		
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<!--=====================================
TOP
======================================-->

<header class="container-fluid cabeza">
	
	<div class="container">
		
		<div class="row" id="cabezote">

			<!--=====================================
			LOGOTIPO
			======================================-->
			
			<div class="col-lg-2 col-md-3 col-sm-2 col-xs-12" id="logotipo">
				
				<a href="<?php echo $url; ?>">
						
					<img src="<?php echo $servidor; ?>vistas/img/plantilla/Logo4.png" class="img-responsive">

				</a>
				
			</div>

			<!--=====================================
			BLOQUE CATEGORÍAS Y BUSCADOR
			======================================-->

			<div class="col-lg-8 col-md-6 col-sm-8 col-xs-12">
					
				<!--=====================================
				BUSCADOR
				======================================-->
				
				<div class="input-group col-lg-12 col-md-11 col-sm-10 col-xs-12" id="buscador">
					
					<input type="search" name="buscar" class="form-control" placeholder="Buscar...">	
					
					<span class="input-group-btn">
						
						<a href="#">

							<button class="btn btn-default whiteColor" id="btnCategorias">
								
								<i class="fa fa-sort-desc"></i>

							</button>

						</a>

					</span>

					<span class="input-group-btn">
						
						<a href="#">

							<button class="btn btn-default backColor" type="submit">
								
								<i class="fa fa-search"></i>

							</button>

						</a>

					</span>

					

				</div>
			
			</div>

			<!--=====================================
			BOTÓN CATEGORÍAS
			======================================

			<div class="col-lg-1 col-md-1 col-sm-2 col-xs-12">
				
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 backColor" id="btnCategorias">	
					<p>
					
						<span>
							<i class="fa fa-bars" aria-hidden="true"></i>
						</span>
					
					</p>


				</div>
			</div>

			<!--=====================================
			CARRITO DE COMPRAS
			======================================-->

			<div class="input-group col-lg-2 col-md-3 col-sm-2 col-xs-12">
				
				<div class="col-lg-12 col-md-3 col-sm-2 col-xs-12" id="carrito">
					
					<a href="#">

						<button class="btn btn-default pull-right backColor"> 
							
							<i class="fa fa-star" aria-hidden="true"></i>
						
						</button>
					
					</a>
					<a href="#">

						<button class="btn btn-default pull-right backColor"> 
							
							<i class="fa fa-cart-plus" aria-hidden="true"></i>
						
						</button>
					
					</a>

					<a href="#">
						
						<p>VER TU CESTA<span class="cantidadCesta"> </span> <br>   <span class="sumaCesta"> </span></p>	
					
					</a>

				</div>

			</div>

			<!--<div class="col-lg-2 col-md-3 col-sm-2 col-xs-12" id="login">
				
				<a href="#modalIngreso" data-toggle="modal">Login</a>
				
				<a href="#">

					<button class="btn btn-default pull-right backColor"> 
						
						<i class="fa fa-user" aria-hidden="true"></i>
					
					</button>
				
				</a>

			</div>-->

		</div>

		<!--=====================================
		CATEGORÍAS
		======================================-->

		<div class="col-xs-12 backColor" id="categorias">  

			<?php

				$item = null;
				$valor = null;

				$categorias = ControladorProductos::ctrMostrarCategorias($item, $valor); ///Trae los datos db

				///var_dump($categorias);

				foreach ($categorias as $key => $value) { /// foreach = hace un recorrido de la tabla, cada item y key se evalua con la var value

					echo '<div class="col-lg-2 col-md-3 col-sm-4 col-xs-12">
							
							<h4>
								<a href="'.$value["ruta"].'" class="pixelCategorias">'.$value["categoria"].'</a>
							</h4>
							
							<hr>

							<ul>';

							$item = "id_categoria";  ///Tabla De referencia

							$valor = $value["id"];   ///Valor id actual

							$subcategorias = ControladorProductos::ctrMostrarSubCategorias($item, $valor);
							
							foreach ($subcategorias as $key => $value) {  ///Recorre la tabla
									
									echo '<li><a href="'.$value["ruta"].'" class="pixelSubCategorias">'.$value["subcategoria"].'</a></li>';
							
							}	
								
							echo '</ul>

						</div>';
				}

			?>	

		</div>

	</div>

</header>
