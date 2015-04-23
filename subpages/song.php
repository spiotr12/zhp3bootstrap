<?php
$id = $_GET["id"];
?>
<section id="" class="container-custom">
	<!--Recent events-->
	<div class="container container-content con">
		<div class="row dark-grey row-custom container-first">
			<div class="col-md-8 col-lg-offset-1 song-single">
				<?php
				//collects data from table "events" and sort it by "id" date in descending oreder
				$query = "SELECT * FROM songbook WHERE id = '$id'";
				$tableData = mysqli_query($db_con, $query)
						or die(mysqli_error());

				//puts the data from "events" into an array
				$resultArray = mysqli_fetch_array($tableData);
//				do {
					echo "<h2>" . $resultArray['title'] . "</h2>";
					echo "<p>" . $resultArray['lyrics'] . "</p>";
//				} while ($resultArray = mysqli_fetch_array($tableData))
				?>
			</div>
		</div>
	</div>
</section>