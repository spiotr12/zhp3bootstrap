<section id="book-list" class="container-custom">
	<div class="container">
		<div class="row dark-grey row-custom container-first">			
			<?php
			if (isCurrentUserAdmin()) {
				?>
				<div class="col-lg-10 col-lg-offset-1">

				</div>
				<?php
			} else {
				?>
				<div class="col-lg-10 col-lg-offset-1">
					<h1>Nie masz uprawnień do oglądania tej strony...</h1>
				</div>
				<?php
			}
			?>
		</div>
	</div>
</section>