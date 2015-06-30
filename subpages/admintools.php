<section id="book-list" class="container-custom">
	<title>Narzędzia Administratora</title>
	<div class="container">
		<div class="row dark-grey row-custom container-first">			
			<?php
			if (isCurrentUserAdmin()) {
				?>
				<div class="col-lg-10 col-lg-offset-1">
					<div class="row">
						<h1 class="object-underline">Narzędzia administracyjne</h1>
						<div class="col-md-12">
							<h3 class="object-underline">Edycja dokumentów</h3>
						</div>
						<div class="col-md-3">
							<?php
							$dir = "./doc";
							$documents = getFilesFromFolder($dir);
							echo "<label class='label'>Lista dokumentów:</label>"
							. "<ul class='list-group doc-list'>";
							foreach ($documents as $doc) {
								echo "<li class='list-group-item doc-list-item'><a href='#'>" . $doc . "</a></li>";
							}
							echo "</ul>";
							?>							
						</div>
						<div class="col-md-offset-2 col-md-7">	
							<form role="form" name="updateDocument" action="./php/updateDocument.php" method="post">
								<input id="currentFile" name="currentFile" type="hidden" val=""/>
								<div class="doc-textarea def-text-color def-text-size">
									<label class="label">Edytuj:</label>
									<textarea class="form-control doc-edit-textarea" rows="5" id="" readonly name="content"></textarea>
								</div>
								<p class="text-center">
									<button id="doc-edit" class="btn btn-warning" type="button"><span class='glyphicon glyphicon-pencil'></span> Edytuj</button>
									<button id="doc-save" class="btn btn-success hidden" type="submit"><span class='glyphicon glyphicon-floppy-disk'></span> Zapisz</button>
									<button id="doc-discard" class="btn btn-danger hidden" type="button"><span class='glyphicon glyphicon-trash'></span> Odrzuć</button>
								</p>
							</form>
						</div>
						<div class="col-md-12 def-text-color def-text-size">
							<label class="label">Podgląd:</label>
							<div class="doc-preview"></div>
						</div>
					</div>
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