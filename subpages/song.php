<?php
$id = $_GET["id"];
?>
<section id="" class="container-custom">
	<!--Recent events-->
	<div class="container container-content con">
		<div class="row very-dark-grey row-custom container-first">
			<div class="col-md-8 col-lg-offset-1 song-single song-lyrics">
				<?php
				//collects data from table "events" and sort it by "id" date in descending oreder
				$query = "SELECT * FROM songbook WHERE id = '$id'";
				$tableData = mysqli_query($db_con, $query)
						or die(mysqli_error());

				//puts the data from "events" into an array
				$resultArray = mysqli_fetch_array($tableData);
				echo "<title>" . $resultArray['title'] . "</title>";
				echo "<h2>" . $resultArray['title'] . "</h2>";
				echo "<h4 class='pull-right'>" . $resultArray['genre'] . "</h4>";
				echo "<p>" . $resultArray['lyrics'] . "</p>";
				if (isAnyoneLogedIn()) {
					echo "<div class='col-md-4 pull-right'>";
					echo "	<p class='pull-right'>";
					echo "	<a class='page-scroll btn btn-sm btn-warning' href='index.php?link=songEdit&do=edit&id=" . $resultArray['id'] . "' role='button'><span class='glyphicon glyphicon-pencil'></span> Edytuj</a>";
					if (isCurrentUserAdmin()) {
						echo "	<a class='page-scroll btn btn-sm btn-danger' href='index.php?link=delete&what=song&&id=" . $resultArray['id'] . "' role='button'><span class='glyphicon glyphicon-trash'></span> Usuń</a>";
					}
					echo "	</p>";
					echo "</div>";
				}
				echo "</div>";
				?>
			</div>
		</div>
	</div>
</section>