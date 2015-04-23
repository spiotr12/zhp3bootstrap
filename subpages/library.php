<section id="songbook">
	<div class="jumbotron">
		<div class="container dark-grey">
			<div class="col-lg-6 col-lg-offset-1"
				 <span id="title-block">
					 <!--<img id="lilijnka" src="img/logo_medium.png"/>-->
					<h1 id="h1-main-title">Nasza Harcerska Biblioteka</h1>
				</span>

				<!--<div class="row">
					<div class="col-md-4">
					<p>hello events</p>
					</div>
					</div>-->
				<p>Tutaj znajdzesz listę wszystkich pozycji dostępnych w naszej bibliotece</p>
				<p>
					<a class="page-scroll btn btn-primary btn-lg" href="#book-list" role="button">Przeglądaj &raquo;</a>					
				</p>
			</div>
			<?php
			if (isCurrentUserAdmin()) {
				?>
				<div class="col-lg-3">
					<p>
					<h2>Narzędzia administratora</h2>
					<a class="page-scroll btn btn-success btn-lg" href="index.php?link=songEdit&do=add" role="button">Dodaj nową pozycję &raquo;</a>
					</p>
				</div>
				<?php
			}
			?>
		</div>
	</div>
</section>
<section id="book-list" class="container-custom">
	<div class="container">
		<div class="row dark-grey row-custom">
			<div class="col-lg-10 col-lg-offset-1">
				<table id="sorttable" class="book-table table tablesorter dark-grey">
					<thead>
						<tr>
							<th>Indeks</th>
							<th>Tytuł</th>
							<th>Autor</th>
							<th>Gatunek</th>
						</tr>
					</thead>
					<tbody>
						<?php
						//collects data from table "events" and sort it by "id" date in descending oreder
						$query = "SELECT * FROM library ORDER BY id ASC";
						$tableData = mysqli_query($db_con, $query)
								or die(mysqli_error());

						//puts the data from "events" into an array
						$resultArray = mysqli_fetch_array($tableData);
						do {
							echo "<tr>";
							echo "	<td>" . $resultArray['id'] . "</td>";
							echo "	<td><a class='book-link' href='index.php?link=book&id=" . $resultArray['id'] . "'>" . $resultArray['title'] . "</a></td>";
							echo "	<td>" . $resultArray['author'] . "</td>";
							echo "	<td>" . $resultArray['genre'] . "</td>";
							echo "</tr>";
						} while ($resultArray = mysqli_fetch_array($tableData))
						?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>
<script>
	$(document).ready(function () {

	});
</script>