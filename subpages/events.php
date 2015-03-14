<section id="events">
	<div class="jumbotron">
		<div class="container dark-grey">
			<span id="title-block">
				<!--<img id="lilijnka" src="img/logo_medium.png"/>-->
				<h1 id="h1-main-title">Nasze wydarzenia</h1>
			</span>

			<!--<div class="row">
				<div class="col-md-4">
				<p>hello events</p>
				</div>
				</div>-->
			<p>Tu dowiesz się wszystkiego o naszych wydarzeniach</p>
			<p><a class="page-scroll btn btn-primary btn-lg" href="#events-list" role="button">Czytaj &raquo;</a></p>
		</div>
	</div>
</section>
<section id="events-list" class="container-custom">
	<!--Recent events-->
	<div class="container">
		<div class="row dark-grey row-custom">
			<?php
			//collects data from table "events" and sort it by "id" date in descending oreder
			$query = "SELECT * FROM events ORDER BY id DESC";
			$tableData = mysqli_query($db_con, $query)
					or die(mysqli_error());

			//puts the data from "events" into an array
			$resultArray = mysqli_fetch_array($tableData);
			$count = 0;
			do {
				// make a preview of the content
				$tempContent = strip_tags(substr($resultArray['content'], 0, 200));
				// get events
				echo "<div id='" . $resultArray['id'] . "'class='col-md-7 col-lg-offset-2 event-container ";
				if ($count % 2 != 0) {
					echo "dark-grey";
				}
				echo "'>";


				echo "<h3>" . $resultArray['title'] . "</h3>";
				echo "<p>" . $tempContent . "... <a class='page-scroll btn btn-info btn-xs' href='index.php?link=singleEvent&id=" . $resultArray['id'] . "' role='button'>czytaj dalej!</a></p>";
				echo "</div>";

				$count++;
			} while ($resultArray = mysqli_fetch_array($tableData))
			?>
		</div>
	</div>
</section>