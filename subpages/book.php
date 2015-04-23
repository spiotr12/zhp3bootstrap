<?php
$id = $_GET["id"];

//collects data from table "library"
$query = "SELECT * FROM library WHERE id = '$id'";
$tableData = mysqli_query($db_con, $query)
		or die(mysqli_error());

//puts the data from "events" into an array
$resultArray = mysqli_fetch_array($tableData);
?>
<section id="" class="container-custom">
	<!--Recent events-->
	<div class="container container-content">
		<div class="row dark-grey row-custom container-first">
			<div class="col-md-10 col-lg-offset-1">
				<h2 class="book-title"><?php echo $resultArray['title']; ?></h2>
			</div>
			<div class="col-lg-3 col-lg-offset-1">
				<img class="book-image" src="img/library/
				<?php
				if (file_exists("img/library/" . $resultArray['title'] . ".jpg")) {
					echo $resultArray['title'] . ".jpg";
				} else {
					echo "default.png";
				}
				?>"/>
			</div>
			<div class="col-lg-6 col-lg-offset-1 dark-grey book-infopanel">
				<label class="label label-primary text-medium">Autor</label>
				<p class="text-large">					
					<?php echo $resultArray['author']; ?>
				</p>
				<label class="label label-info text-medium">Wydawnictwo</label>
				<p class="text-large">					
					<?php echo $resultArray['publisher']; ?>
				</p>
				<div class="row">
					<div class="col-lg-4">
						<label class="label label-warning text-medium">Miejsce oraz rok wydania</label>
						<p class="text-large">					
							<?php echo $resultArray['published_city'] . " " . $resultArray['published_date']; ?>
						</p>
					</div>
					<div class="col-lg-4">
						<label class="label label-success text-medium">Garunek</label>
						<p class="text-large">					
							<?php echo $resultArray['genre']; ?>
						</p>
					</div>
				</div>
				<div class="row">					
					<div class="col-lg-3">
						<label class="label label-default text-medium">Język</label>
						<p class="text-large">					
							<?php echo $resultArray['language']; ?>
						</p>
					</div>
					<div class="col-lg-2">
						<label class="label label-default text-medium">Liczba kopii</label>
						<p class="text-large">					
							<?php echo $resultArray['copies']; ?>
						</p>
					</div>
					<div class="col-lg-5 col-lg-offset-1">
						<label class="label label-default text-medium">Właściciel</label>
						<p class="text-large">					
							<?php echo $resultArray['owner']; ?>
						</p>
					</div>
				</div>
			</div>
		</div><!--end of first container-->
	</div>
</section>
<section id="" class="container-custom">
	<!--Recent events-->
	<div class="container container-content">
		<div class="row dark-grey row-custom">
			<div class="col-md-10 col-lg-offset-1">
				<?php
				if (isAnyoneLogedIn() == true) {
					?>
					<h3>Historia wypozyczeń</h3>
					<table id="sorttable" class="book-table table tablesorter dark-grey">
						<thead>
							<tr>
								<th>Data wypożyczenia</th>
								<th>Data zwrotu</th>
								<th>Wypożyczone przez</th>
								<th>Książka oddana</th>
							</tr>
						</thead>
						<tbody>
							<?php
							//collects data from table "events" and sort it by "id" date in descending oreder
							$query = "SELECT * FROM borrow_history WHERE book_id = '$id' ORDER BY date_borrowed ASC";
							$tableData = mysqli_query($db_con, $query)
									or die(mysqli_error());

							//puts the data from "events" into an array
							$resultArray = mysqli_fetch_array($tableData);
							$count = count($resultArray);
							if ($count != 0) {
								do {
									// check if book is returned
									$returned;
									if ($resultArray['returned']) {
										$returned = "tak";
									} else {
										$returned = "nie";
									}
									echo "<tr>";
									echo "	<td>" . $resultArray['date_borrowed'] . "</td>";
									echo "	<td>" . $resultArray['date_returned'] . "</td>";
									echo "	<td>" . $resultArray['person'] . "</td>";
									echo "	<td>" . $returned . "</td>";
									echo "</tr>";
								} while ($resultArray = mysqli_fetch_array($tableData));
							}
							?>
						</tbody>
					</table>
					<?php
					if ($count == 0) {
						echo "<h4 class='text-center'>Książka nie była jeszcze wypożyczana</h4>";
					}
				} else {
					echo "<h3>Aby wypożyczyć i zobaczyć czy książka jest dostępna należy być zarejestrowanym użytkownikiem.</h3>";
					echo "<p>";
					echo "	<a class='page-scroll btn btn-success' href='index.php?link=login' role='button'>Logowanie &raquo;</a>";
					echo "	 lub ";
					echo "	<a class='page-scroll btn btn-primary' href='index.php?link=login#register' role='button'>Rejestracja &raquo;</a>";
					echo "</p>";
				}
				?>
			</div>
		</div>
	</div>
</section>
