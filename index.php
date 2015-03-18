<!doctype html>
<?php
session_start();

include './etc/db_access.php';

// Create connection
$db_con = mysqli_connect($db_host, $db_username, $db_password)
		or die("Unable to connect to MySQL");

// Check connection
if (mysqli_connect_errno()) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

// polish characters
include './php/polish_characters.php';

// select a database to work with
$selected = mysqli_select_db($db_con, $db_dbname)
		or die("Could not select " . $db_dbname);

// sets the link
$subpage;
if (isset($_GET["link"]) && !empty($_GET["link"])) {
	$subpage = $_GET["link"];
} else {
	$subpage = "home";
}

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

		<link href="css/font-awesome.min.css" rel="stylesheet">
		<link href="css/summernote.css" rel="stylesheet">

        <link rel="stylesheet" href="css/main.css">
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body id="<?php echo $subpage ?>" data-spy="scroll" data-target=".navbar-fixed-top">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle collapsed" data-target=".navbar-collapse" data-toggle="collapse" type="button">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand page-scroll" href="<?php isInParentTab($subpage, "home") ?>#home">ZHP Aberdeen</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown">
							<a class="dropdown-toggle" aria-expanded="false" role="button" data-toggle="dropdown" href="#">
								Home
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a class="page-scroll" href="<?php isInParentTab($subpage, "home") ?>#home">Home</a>
								</li>
								<li>
									<a class="page-scroll" href="<?php isInParentTab($subpage, "home") ?>#about_troop">O nas</a>
								</li>
								<li class="disabled">
									<a class="page-scroll" href="<?php isInParentTab($subpage, "home") ?>#recent_events">Aktualności</a>
								</li>
								<li>
									<a class="page-scroll" href="<?php isInParentTab($subpage, "home") ?>#contact">Kontakt</a>
								</li>
							</ul>
						</li>
						<li></li>
						<li></li>
						<li class="dropdown">
							<a class="dropdown-toggle" aria-expanded="false" role="button" data-toggle="dropdown" href="#">
								Drużyna
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a class="page-scroll" href="<?php isInParentTab($subpage, "events") ?>#events">Wydarzenia</a>
								</li>
								<li class="disabled">
									<a class="page-scroll" href="<?php isInParentTab($subpage, "chronicle") ?>#chronicle">Kronika</a>
								</li>
								<li>
									<a class="page-scroll" target="_blank" href="gallery">Galeria</a>
								</li>
								<li class="divider"></li>
								<li class="dropdown-header">Techniczne:</li>
								<li class="disabled">
									<a class="page-scroll" href="<?php isInParentTab($subpage, "uniforms") ?>#uniforms">Umundurowanie</a>
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
									<a class="page-scroll" href="<?php isInParentTab($subpage, "books") ?>#books">Książki</a>
								</li>
								<li class="disabled">
									<a class="page-scroll" href="<?php isInParentTab($subpage, "documents") ?>#documents">Dokumenty</a>
								</li>
								<li>
									<a class="page-scroll" href="<?php isInParentTab($subpage, "songbook") ?>#songbook">Śpiewnik</a>
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

					</ul>
					<!--<div class="navbar-collapse collapse">-->
					<ul class="nav navbar-nav pull-nav-right">
						<?php
						if (isset($_SESSION['sess_user_active']) && $_SESSION['sess_user_active'] == true) {
							?>
							<li class="dropdown">
								<!--when user is logged in-->
								<a class="dropdown-toggle" aria-expanded="false" role="button" data-toggle="dropdown"  href="#">
									<?php
									echo $_SESSION['sess_firstname'] . " " . $_SESSION['sess_lastname'];
									?>
									<span class="caret"></span>
									<img class="avatar img-circle" src="img/avatars/
									<?php
									if (file_exists("img/avatars/" . $_SESSION['sess_email'] . ".jpg")) {
										echo $_SESSION['sess_email'];
									} else {
										echo "default";
									}
									?>.jpg"/>
								</a>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="index.php?link=profile">Profil</a>
									</li>
									<li>
										<a href="index.php?link=logout">Wyloguj</a>
									</li>
								</ul>
							</li>
							<li>

							</li>
							<?php
						} else {
							?>
							<!--if no one is logged in-->
							<li class="dropdown">
								<a class="dropdown-toggle" aria-expanded="false" role="button" data-toggle="dropdown"  href="#">
									Użytkownik
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a class="page-scroll" href="<?php isInParentTab($subpage, "login") ?>#login">Zaloguj</a>
									</li>
									<li>
										<a class="page-scroll" href="<?php isInParentTab($subpage, "login") ?>#register">Rejestracja</a>
									</li>
								</ul>
							</li>
							<?php
						}
						?>
					</ul>
					<!--</div>-->
				</div><!--/.nav-collapse -->
			</div>
		</nav>

		<?php
		switch ($subpage) {
			case "home" : include './subpages/home.php';
				break;
			case "events" : include './subpages/events.php';
				break;
			case "singleEvent" : include './subpages/event.php';
				break;
			case "books" : include './subpages/books.php';
				break;
			case "songbook" : include './subpages/songbook.php';
				break;
			case "singleSong" : include './subpages/song.php';
				break;
			case "login" : include './subpages/login.php';
				break;
			case "logout" : include './subpages/logout.php';
				break;
			case "profile" : include './subpages/profile.php';
				break;
			case "songEdit" : include './subpages/songEditor.php';
				break;

			//default
			default : include './subpages/home.php';
				break;
		}
		?>


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
	<!--standard scripts start-->
	<script src="js/vendor/jquery-1.11.2.js"></script>

	<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.js"><\/script>')</script>

	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/vendor/jquery.easing.min.js"></script>
	<script src="js/vendor/scrolling-nav.js"></script>

	<script src="js/main.js"></script>
	<!--standard scripts end-->

	<!--summernote text editor start-->
	<script src="js/summernote.min.js"></script>

	<script>
		$(document).ready(function () {
			$('#summernote').summernote();
//			$('textarea.note-codable').attr('name', 'editorTextArea');
//			$('textarea.note-codable').attr('id', 'editorTextArea');
		});
	</script>
	<!--summernote text editor start-->
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