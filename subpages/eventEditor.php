<title>Edytor wydarzeń</title>
<section id="add-song" class="container-custom">
	<!--Recent events-->
	<div class="container container-content song-single-container">
		<div class="row dark-grey row-custom container-first">
			<div class="col-md-10 col-md-offset-1 song-single">
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
						<!--editor type-->
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
								<input type="text" class="form-control" required name="title" id="title" value="<?php
								if ($do == 'edit') {
									echo $resultArray['title'];
								}
								?>"/>
							</div>

							<div class="col-lg-2 form-group">
								<label for="happen">Data:</label>
								<input type="text" id="datepicker" class="form-control" required name="happen" id="happen" value="<?php
								if ($do == 'edit') {
									echo $resultArray['happen'];
								}
								?>"/>
							</div>

							<div class="col-lg-3 form-group">
								<label for="type">Informacje dla:</label>
								<select class="form-control" name="type" id="type">
									<?php
									$type = "";
									if ($do == 'edit') {
										$type = $resultArray['type'];
									}
									?>
									<option <?php if ($type == 0) { ?>selected="selected" <?php } ?>value="0">Wszyscy</option>
									<option <?php if ($type == 1) { ?>selected="selected" <?php } ?>value="1">Zuchy</option>
									<option <?php if ($type == 2) { ?>selected="selected" <?php } ?>value="2">Harcerze</option>
									<option <?php if ($type == 3) { ?>selected="selected" <?php } ?>value="3">Wędrownicy</option>
								</select>
							</div>

							<div class="col-lg-3 form-group">
								<label for="addedBy">Dodane przez:</label>
								<div class="input-group">
									<input type="text" class="form-control" required readonly name="author" id="author"  value="<?php
									if ($do == 'edit') {
										echo $resultArray['author'];
									} else {
										echo $_SESSION['sess_firstname'] . " " . $_SESSION['sess_lastname'];
									}
									?>"/>
									<span class="input-group-btn">
										<button class="btn btn-default" type="button" id='changeEditor'>Zmień</button>
									</span>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="summernote">Tekst piosenki:</label>
							<div class="summernote-text-editor">
								<textarea id="summernote" class="texteditor-custom" name="content"><?php
									if ($do == 'edit') {
										echo $resultArray['content'];
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
									&nbsp;Dodaj wydarzenie 												
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
