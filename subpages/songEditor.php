<section id="add-song" class="container-custom">
	<!--Recent events-->
	<div class="container container-content song-single-container">
		<div class="row dark-grey row-custom">
			<div class="col-md-9 col-lg-offset-1 song-single">
				<?php
				$do = $_GET['do'];
				if (isCurrentUserAdmin() == true) {
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
							<div class="col-lg-4 form-group">
								<label for="title">Tytuł:</label>
								<input type="text" class="form-control" name="title" id="title" value="<?php
								if ($do == 'edit') {
									echo $resultArray['title'];
								}
								?>"/>
							</div>

							<div class="col-lg-4 form-group">
								<label for="artist">Artysta:</label>
								<input type="text" class="form-control" name="artist" id="artist" value="<?php
								if ($do == 'edit') {
									echo $resultArray['artist'];
								}
								?>"/>
							</div>

							<div class="col-lg-4 form-group">
								<label for="addedBy">Dodane przez:</label>
								<input type="text" class="form-control" name="addedBy" id="addedBy"  value="<?php
								if ($do == 'edit') {
									echo $resultArray['addedBy'];
								}
								?>"/>
							</div>
						</div>

						<div class="form-group">
							<label for="summernote">Tekst piosenki:</label>
							<div class="summernote-text-editor">
								<textarea id="summernote" name="lyrics"><?php
									if ($do == 'edit') {
										echo $resultArray['lyrics'];
									}
									?></textarea>
							</div>
						</div>						
						<?php
						if ($do == 'add') {
							?>
							<button type="submit" class="btn btn-lg btn-success center-block">
								<span class="glyphicon glyphicon-plus"></span>
								Dodaj piosenkę 
							</button>
							<?php
						} else if ($do == 'edit') {
							?>
							<button type="submit" class="btn btn-lg btn-warning center-block">
								<span class="glyphicon glyphicon-pencil"></span>
								Edytuj piosenkę 
							</button>
							<?php
						}
						?>
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
