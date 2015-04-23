<section id="add-song" class="container-custom">
	<!--Recent events-->
	<div class="container container-content song-single-container">
		<div class="row dark-grey row-custom container-first">
			<div class="col-md-9 col-lg-offset-1 song-single">
				<?php
				$do = $_GET['do'];
				if (isCurrentUserAdmin() == true) {
					$resultArray;
					if ($do == 'add') {
						echo "<h2>Dodaj nowe wydarzenie</h2>";
					} else if ($do == 'edit') {
						echo "<h2>Edytuj wydarzenie</h2>";
						//collects data about this ID item
						$query = "SELECT * FROM events WHERE id=" . $_GET['id'];
						$tableData = mysqli_query($db_con, $query)
								or die(mysqli_error());
						//puts the data from "events" into an array
						$resultArray = mysqli_fetch_array($tableData);
					}
					?>					
					<form role="form" name="register" action="./php/editor.php" method="post">

						<input type="hidden" name="editorFor" value="event"/>
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
								} else {
									echo $_SESSION['sess_firstname'] . " " . $_SESSION['sess_lastname'];
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
//									else {
//										echo "
//										<table class='table table-bordered'>
//											<tbody>
//											<tr>
//											<td><br></td>
//										<td><br></td>
//										</tr>
//										</tbody>
//										</table>
//										";
//									}
									?></textarea>
							</div>
						</div>						
						<?php
						if ($do == 'add') {
							?>
							<button type="submit" class="btn btn-lg btn-success center-block">
								<span class="glyphicon glyphicon-plus"></span>
								Dodaj wydarzenie 
							</button>
							<?php
						} else if ($do == 'edit') {
							?>
							<button type="submit" class="btn btn-lg btn-success center-block">
								<span class="glyphicon glyphicon-pencil"></span>
								Zapisz zmiany 
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
