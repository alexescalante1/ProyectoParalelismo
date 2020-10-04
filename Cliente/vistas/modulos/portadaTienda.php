<div class="container">

	<div class="row">

		<div class="col-md-8">

			<?php 
			
                include "carruselProducPortada.php";
                
                include "recomendadosPortada.php";
			
			?>
			
		</div>

		<div class="col-md-4 onlyDesctop">

			<a href="https://www.youtube.com/watch?v=j5vYLYZjecI&ab_channel=AlexCGDesign">
                
                <video onloadedmetadata="this.muted=true" autoplay loop>
                   
                    <source src="<?php echo $servidor; ?>vistas/video/Red8.mp4">
                
                </video>
            
            </a>
            
            <?php
			
                include "carruselCuponesPortada.php";
			
			?>
			
		</div>

	</div>
</div>