<?php
$id = $_GET["id"];
?>
<section id="" class="container-custom">
	<!--Recent events-->
	<div class="container container-content event-single-container">
		<div class="row very-dark-grey row-custom">
			<div class="col-md-8 col-lg-offset-1 event-single">
				<?php
				//collects data from table "events" and sort it by "id" date in descending oreder
				$query = "SELECT * FROM events WHERE id = '$id'";
				$tableData = mysqli_query($db_con, $query)
						or die(mysqli_error());

				//puts the data from "events" into an array
				$resultArray = mysqli_fetch_array($tableData);
				?>
				<h2><?php echo $resultArray['title']; ?></h2>
				<?php
				if (isCurrentUserAdmin()) {
					echo "<div class='col-md-4 pull-right'>";
					echo "	<p class='pull-right'>";
					echo "		<a class='page-scroll btn btn-sm btn-warning' href='index.php?link=eventEdit&do=edit&id=" . $resultArray['id'] . "' role='button'><span class='glyphicon glyphicon-pencil'></span> Edytuj</a>";
					echo "		<a class='page-scroll btn btn-sm btn-danger' href='index.php?link=delete&what=event&&id=" . $resultArray['id'] . "' role='button'><span class='glyphicon glyphicon-trash'></span> Usuń</a>";
					echo "	</p>";
					echo "</div>";
				}
				?>
				<p class="label label-primary input">Data: <?php echo $resultArray['happen']; ?></p>
				<p><?php echo $resultArray['content']; ?></p>
				<p class="label label-default">Utworzono <?php echo $resultArray['created'] . " przez " . $resultArray['author']; ?></p>
				<?php
				?>
			</div>
		</div>
	</div>
</section>