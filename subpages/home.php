<!--
	set nav buttons class to .active
--> 

<section id="home" class="container-custom">
	<div class="jumbotron .jumbotron-custom">
		<div class="container dark-grey jumbotron-container-container">
			<span id="title-block">
				<!--<img id="lilijnka" src="img/logo_medium.png"/>-->
				<h1 id="h1-main-title">Związek Harcerstwa Polskiego w Aberdeen</h1>
			</span>

			<div class="row">
				<div class="col-md-4">
					<img class="img-circle img-responsive logo" src="img/logo_medium.png" />
				</div>
				<div class="col-md-8">
					<p>"Mam szczerą wolę całym życiem pełnić służbę Bogu i Polsce, nieść chętną pomoc bliźnim i być posłusznym Prawu Harcerskiemu." </p>
					<p> ~ Przyrzeczenie Harcerskie ~ </p>
				</div>

				<div class="col-md-7">
					<h3>Patroni</h3>
				</div>
				<div class="col-md-4">
					<a target="_blank" href="http://edynburg.msz.gov.pl/pl/p/edynburg_gb_k_pl/"><img class="img-thumbnail img-responsive patron" src="img/konsulat.png" /></a>
				</div>
				<div class="col-md-4">
					<a target="_blank" href="http://www.pangeamagazine.com/?lang=pl"><img class="img-thumbnail img-responsive patron" src="img/pangea.png" /></a>
				</div>
			</div>
			<!--<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>-->
		</div>
	</div>
</section>

<section id="about_troop" class="container-custom">	
	<!--About the troop-->
	<div class="container container-custom">
		<div class="row dark-grey row-custom">
			<div class="col-md-6">
				<h2>Coś niecoś o nas</h2>
				<p>
					W czerwcu 2013 roku zostal zalozony Krag Harcerstwa Starszego, zlozony z osob doroslych, ktorych sercu bliska jest idea polskiego harcerstwa na emigracji w Aberdeen. Krag nazywa sie Bractwo Zelaznej Brzozy. W 2014r. czlonkowie kregu odbyli Kurs Agricola, prowadzony przez instruktorke ZHP, Katrzyne Stec. W 2015 r. powstala pierwsza Gromada Zuchowa ZHP w Aberdeen. W Styczniu 2015 jeden z kursantow kursu Agricola, Marcin Bednarz rozpoczal owocna prace nad powolaniem druzyny wedrowniczej w Glasgow, czego skutkiem jest powstanie ZHP Glasgow. Obecnie zbiorki zuchowe (dzieci w wieku 7-11/12 lat) odbywaja sie od 18-19.30 w Grammar School na Skene Street w ramach polskiej szkoly Sobotniej. Krag Harcerstwa Starszego w marcu 2015 r. zamknal swoj okres probny i otrzymal nazwe 'Bractwo Zelaznej Brzozy'. Dorosli czlonkowie wspomagaja gromade zuchowa materialnie oraz podejmuja starania nad tworzeniem kolejnych druzyn harcerskich i patroli wedrowniczych. Wspolpracujemy rowniez z ZHP Edynburg i wspomagamy powstawanie nowych osrodkow ZHP w Szkocji w porozumieniu z Wielkobrytyjska Choragwia Harcerzy i Wielkobrytyjska Choragwia Harcerek ZHP.
				</p>
				<p>
					Oprocz pracy z dziecmi, mamy szeroka oferte dla mlodziezy, od wedrowek po zajecia survivalowe, obronne w oparciu o najlepsze tradycje polskiej emigracji w Wielkiej Brytanii.
				</p>
				<p>
					Wszystkich ktorym bliska jest idea polskiego harcerstwa w Aberdeen zapraszamy do kontaktu na wskazane ponizej adresy. Czuwaj!
				</p>
			</div>
			<div class="col-md-6">
				<h2>Zdjęcia</h2>
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<?php
					$directory = "./img/slideshow";
					$images = getFilesFromFolder($directory);

					// Indicators
					echo "<ol class='carousel-indicators'>\n
						  <li data-target='#myCarousel' data-slide-to='0' class='active'></li>";
					for ($i = 1; $i < count($images); $i++) {
						echo "<li data-target='#myCarousel' data-slide-to='" . $i . "'></li>";
					}
					echo "</ol>";

					// Wrapper for slides
					echo "<div class='carousel-inner' role='listbox'>";

					echo "<div class='item active'>
							  <img src='./img/slideshow/" . $images[0] . "' alt='Chania'>
						  </div>";
					for ($i = 1; $i < count($images); $i++) {
						echo "<div class='item'>
								  <img src='./img/slideshow/" . $images[$i] . "' alt='Chania'>
							  </div>";
					}

					echo "</div>";
					?>
					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Poprzedni</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Następny</span>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>

<section id="recent_events" class="container-custom" style="display: none">
	<!--Recent events-->
	<div class="container container-content">
		<div class="row dark-grey row-custom">
			<div class="col-md-12">
				<h2>Najnowsze wydarzenia</h2>
			</div>
			<div class="col-md-5">
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>
			<div class="col-md-5 col-lg-offset-1">
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>
		</div>
	</div>
</section>
<section id="contact" class="container-custom">
	<!--Recent events-->
	<div class="container container-content">
		<div class="row dark-grey row-custom">
			<div class="col-md-12 col-lg-offset-1">
				<h2>Skontaktuj się z nami</h2>
				<h3>Katarzyna Stać</h3>
				<ul class="contact-list">
					<li>Funkcja: &ensp;Drużynowa</li>
					<li>Email: &ensp; <a class="label label-warning" href="mailto:stec.katarzyna89@gmail.com">stec.katarzyna89@gmail.com</a></li>
				</ul>
				<h3>Krzysztof Orchowski</h3>
				<ul class="contact-list">
					<li>Funkcja: &ensp;Kierowni Kręgu Harcerstwa Starszego</li>
					<li>Email: &ensp; <a class="label label-warning" href="mailto:k.orchowski.08@aberdeen.ac.uk">k.orchowski.08@aberdeen.ac.uk</a></li>
				</ul>
				<h3>Piotr Starzec</h3>
				<ul class="contact-list">
					<li>Funkcja: &ensp;Skarbnik oraz Administrator strony</li>
					<li>Email: &ensp; <a class="label label-warning" href="mailto:starzec.piotr.12@gmail.com">starzec.piotr.12@gmail.com</a></li>
				</ul>
			</div>
		</div>
	</div>
</section>
