<title>Edytor piosenki</title>
<section id="add-song" class="container-custom">
	<!--Recent events-->
	<div class="container container-content song-single-container">
		<div class="row dark-grey row-custom container-first">
			<div class="col-md-10 col-md-offset-1 song-single">
				<?php
				$do = $_GET['do'];
				if (isAnyoneLogedIn() == true) {
					$resultArray;
					if ($do == 'add') {
						echo "<h2>Dodaj nową piosenkę</h2>";
					} else if ($do == 'edit') {
						echo "<h2>Edytuj piosenkę</h2>";
						//collects data about this ID item
						$query = "SELECT * FROM songbook WHERE id=" . $_GET['id'];
						$tableData = mysqli_query($db_con, $query)
								or die(mysqli_error());
						//puts the data from "events" into an array
						$resultArray = mysqli_fetch_array($tableData);
					}
					?>					
					<form role="form" name="register" action="./php/editor.php" method="post">

						<input type="hidden" name="editorFor" value="song"/>
						<input type="hidden" name="editorDo" value="<?php echo $do; ?>"/>
						<?php
						if ($do == 'edit') {
							echo "<input type='hidden' name='id' value='" . $resultArray['id'] . "'/>";
						}
						?>

						<div class="row">
							<div class="col-md-3 form-group">
								<label for="title">Tytuł:</label>
								<input type="text" class="form-control" required name="title" id="title" value="<?php
								if ($do == 'edit') {
									echo $resultArray['title'];
								}
								?>"/>
							</div>

							<div class="col-md-3 form-group">
								<label for="artist">Artysta:</label>
								<input type="text" class="form-control" required name="artist" id="artist" value="<?php
								if ($do == 'edit') {
									echo $resultArray['artist'];
								}
								?>"/>
							</div>

							<div class="col-md-3 form-group">
								<label for="genre">Garunek:</label>
								<select class="form-control" name="genre" id="genre">
									<?php
									$genre = "";
									if ($do == 'edit') {
										$genre = $resultArray['genre'];
									}
									?>
									<option <?php if ($genre == "Harcerskie") { ?>selected="selected" <?php } ?>value="Harcerskie">Harcerskie</option>
									<option <?php if ($genre == "Biesiadne") { ?>selected="selected" <?php } ?>value="Biesiadne">Biesiadne</option>
									<option <?php if ($genre == "Szanty") { ?>selected="selected" <?php } ?>value="Szanty">Szanty</option>
									<option <?php if ($genre == "Religijne") { ?>selected="selected" <?php } ?>value="Religijne">Religijne</option>
									<option <?php if ($genre == "Różne") { ?>selected="selected" <?php } ?>value="Różne">Różne</option>
								</select>
							</div>

							<div class="col-md-3 form-group">
								<label for="author">Dodane przez:</label>
								<div class="input-group">
									<input type="text" class="form-control" required readonly name="addedBy" id="author" value="<?php
									if ($do == 'edit') {
										echo $resultArray['addedBy'];
									} else {
										echo $_SESSION['sess_firstname'] . " " . $_SESSION['sess_lastname'];
									}
									?>"/>
									<span class="input-group-btn">
										<button class="btn btn-default" type="button" id='changeEditor'>Zmień</button>
									</span>
								</div>
							</div>
							<div class="col-md-8 col-md-offset-2 very-dark-grey border-round-5">
								<p class="padding-top-5">
									* Jeśli zamieszczasz tekst piosenki razem z chwytami, prosimy, użyj tabeli (tekst w lewej kolumnie, chwyty po prawej). Dziękujemy :)
								</p>
							</div>
						</div>

						<div class="form-group">
							<label for="summernote">Tekst piosenki:</label>
							<div class="summernote-text-editor">
								<textarea id="summernote" class="texteditor-custom" name="lyrics"><?php
									if ($do == 'edit') {
										echo $resultArray['lyrics'];
									}
									?></textarea>
							</div>
						</div>				
						<p class="text-center">
							<button type="submit" class="btn btn-lg btn-success">
								<?php
								if ($do == 'add') {
									?>
									<span class="glyphicon glyphicon-plus"></span>
									&nbsp;Dodaj piosenkę 												
									<?php
								} else if ($do == 'edit') {
									?>
									<span class="glyphicon glyphicon-floppy-disk"></span>
									&nbsp;Zapisz zmiany 
									<?php
								}
								?>
							</button>	
							lub 
							<button type="button" class="btn btn-lg btn-danger"  onclick="history.back()">
								<span class="glyphicon glyphicon-trash"></span>
								&nbsp;Anuluj 
							</button>
						</p>
					</form>
					<?php
				} else {
					echo "<h2>Nie posiadasz uprawnień by otwierać tę stronę!</h2>";
				}
				?>
			</div>
		</div>
	</div>
</section>