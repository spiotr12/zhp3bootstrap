<section id="songbook">
	<div class="jumbotron">
		<div class="container dark-grey">
			<div class="col-lg-5 col-lg-offset-1"
				 <span id="title-block">
					 <!--<img id="lilijnka" src="img/logo_medium.png"/>-->
					<h1 id="h1-main-title">Nasz Śpiewnik</h1>
				</span>

				<!--<div class="row">
					<div class="col-md-4">
					<p>hello events</p>
					</div>
					</div>-->
				<p>Tutaj znajdzesz nasze piosenki</p>
				<p>
					<a class="page-scroll btn btn-primary btn-lg" href="#songbook-list" role="button">Czytaj &raquo;</a>					
				</p>
			</div>
			<?php
			if (isCurrentUserAdmin()) {
				?>
				<div class="col-lg-3 col-lg-offset-1">
					<p>
					<h2>Narzędzia administratora</h2>
					<a class="page-scroll btn btn-success btn-lg" href="index.php?link=songEdit&do=add" role="button">Dodaj nową piosenkę &raquo;</a>
					</p>
				</div>
				<?php
			}
			?>
		</div>
	</div>
</section>
<section id="songbook-list" class="container-custom">
	<!--Recent events-->
	<div class="container">
		<div class="row dark-grey row-custom">
			<?php
			//collects data from table "events" and sort it by "id" date in descending oreder
			$query = "SELECT * FROM songbook ORDER BY title ASC";
			$tableData = mysqli_query($db_con, $query)
					or die(mysqli_error());

			//puts the data from "events" into an array
			$resultArray = mysqli_fetch_array($tableData);
			$count = 0;
			do {
				// get content
				echo "<div id='" . $resultArray['id'] . "'class='col-md-6 col-lg-offset-2 song-container ";
				if ($count % 2 != 0) {
					echo "dark-grey";
				}
				echo "'>";
				echo "	<h3>" . $resultArray['title'] . "</h3>";
				echo "		<div class='col-md-8'>";
				echo "			<p>autor: " . $resultArray['artist'] . " ";
				echo "			<a class='page-scroll btn btn-primary btn-xs' href='index.php?link=singleSong&id=" . $resultArray['id'] . "' role='button'>Śpiewaj</a></p>";
				echo "		</div>";
				if (isCurrentUserAdmin()) {
					echo "<div class='col-md-4 '>";
					echo "	<p>";
					echo "	<a class='page-scroll btn btn-sm btn-warning' href='index.php?link=songEdit&do=edit&id=" . $resultArray['id'] . "' role='button'><span class='glyphicon glyphicon-pencil'></span> Edytuj</a>";
					echo "	<a class='page-scroll btn btn-sm btn-danger' href='index.php?link=songDelete&id=" . $resultArray['id'] . "' role='button'><span class='glyphicon glyphicon-trash'></span> Usuń</a>";
					echo "	</p>";
					echo "</div>";
				}
				echo "</div>";


				$count++;
			} while ($resultArray = mysqli_fetch_array($tableData))
			?>
		</div>
	</div>
</section>