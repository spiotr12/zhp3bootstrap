<!doctype html>
<?php
include './php/scripts.php'; // gets scripts
?>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            body {
                padding-top: 50px;
                padding-bottom: 20px;
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle collapsed" data-target=".navbar-collapse" data-toggle="collapse" type="button">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand page-scroll" href="#page-top">ZHP Aberdeen</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a class="page-scroll" href="#page-top">Home</a></li>
						<li><a class="page-scroll" href="#troop">O drużynie</a></li>
						<li><a class="page-scroll" href="#recent_events">Aktualności</a></li>
						<li class="dropdown">
							<a class="dropdown-toggle" aria-expanded="false" role="button" data-toggle="dropdown" href="#">
								Drużyna
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="#">Wydarzenia</a>
								</li>
								<li class="disabled">
									<a href="#">Kronika</a>
								</li>
								<li class="divider"></li>
								<li class="dropdown-header">Techniczne:</li>
								<li class="disabled">
									<a href="#">Umundurowanie</a>
								</li>
							</ul>
						</li>
						<li class="dropdown">
							<a class="dropdown-toggle" aria-expanded="false" role="button" data-toggle="dropdown"  href="#">
								Biblioteka
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="#">Książki</a>
								</li>
								<li class="disabled">
									<a href="#">Dokumenty</a>
								</li>
								<li>
									<a href="#">Śpiewnik</a>
								</li>
							</ul>
						</li>
						<li class="dropdown">
							<a class="dropdown-toggle" aria-expanded="false" role="button" data-toggle="dropdown"  href="#">
								Linki
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li class="dropdown-header">
									Harcerskie
								</li>
								<li>
									<a target="_blank" href="http://www.zhppgk.org/">ZHP Wielka Brytania</a>
								</li>
								<li>
									<a target="_blank" href="http://www.zhpgkh.org/">ZHP Harcerze</a>
								</li>
								<li>
									<a target="_blank" href="http://www.zhppgk.org/org_harcerek.htm">ZHP Harcerki</a>
								</li>
								<li class="divider"></li>
								<li class="dropdown-header">
									Współpraca
								</li>
								<li>
									<a target="_blank" href="http://www.pccaberdeen.co.uk/">Polish Catholic Community</a>
								</li>
								<li>
									<a target="_blank" href="http://www.pangeamagazine.com/?lang=pl">Pangea Magazine</a>
								</li>
								<li>
									<a target="_blank" href="http://edynburg.msz.gov.pl/pl/p/edynburg_gb_k_pl/">Konsulat RP w Edynburgu</a>
								</li>
							</ul>
						</li>
						<li class="dropdown">
							<a class="dropdown-toggle" aria-expanded="false" role="button" data-toggle="dropdown"  href="#">
								Użytkownik
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="#">Zaloguj</a>
								</li>
								<li>
									<a href="#">Rejestracja</a>
								</li>
							</ul>
						</li>
					</ul>
				</div><!--/.nav-collapse -->

			</div>
		</nav>
		<section id="intro" class="container-custom">
			<div class="jumbotron">
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
		<section id="troop" class="container-custom">	
			<!--About the troop-->
			<div class="container container-custom">
				<div class="row dark-grey row-custom">
					<div class="col-md-5">
						<h2>Nasza drużyna</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					</div>
					<div class="col-md-7">
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
		<section id="recent_events" class="container-custom">
			<!--Recent events-->
			<div class="container container-content">
				<div class="row dark-grey row-custom">
					<div class="col-md-12">
						<h2>Najnowsze wydarzenia</h2>
					</div>
					<div class="col-md-6">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					</div>
					<div class="col-md-6">

						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					</div>
				</div>
			</div>
		</section>
		<!--<section class="container-custom">-->
		<div class="container-content container ">
			<div class="row dark-grey row-custom">
				<footer>
					<p>
						Create by KnowIdea team
					</p>
				</footer>
			</div>
		</div>
		<!--</section>-->
	</body>
	<script src="js/vendor/jquery-1.11.2.js"></script>
	<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.js"><\/script>')</script>

	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/vendor/jquery.easing.min.js"></script>
	<script src="js/vendor/scrolling-nav.js"></script>

	<script src="js/main.js"></script>

	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
	<script>
		(function (b, o, i, l, e, r) {
			b.GoogleAnalyticsObject = l;
			b[l] || (b[l] =
					function () {
						(b[l].q = b[l].q || []).push(arguments)
					});
			b[l].l = +new Date;
			e = o.createElement(i);
			r = o.getElementsByTagName(i)[0];
			e.src = '//www.google-analytics.com/analytics.js';
			r.parentNode.insertBefore(e, r)
		}(window, document, 'script', 'ga'));
		ga('create', 'UA-XXXXX-X', 'auto');
		ga('send', 'pageview');
	</script>
</html>