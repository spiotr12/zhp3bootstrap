<?php
$id = $_GET["id"];
?>
<section id="" class="container-custom">
	<!--Recent events-->
	<div class="container container-content event-single-container">
		<div class="row dark-grey row-custom">
			<div class="col-md-8 col-lg-offset-1 event-single">
				<?php
				//collects data from table "events" and sort it by "id" date in descending oreder
				$query = "SELECT * FROM events WHERE id = '$id'";
				$tableData = mysqli_query($db_con, $query)
						or die(mysqli_error());

				//puts the data from "events" into an array
				$resultArray = mysqli_fetch_array($tableData);
				do {
					echo "<h2>" . $resultArray['title'] . "</h2>";
					echo "<p>" . $resultArray['content'] . "</p>";
				} while ($resultArray = mysqli_fetch_array($tableData))
				?>
			</div>
		</div>
	</div>
</section>