<?php
if (isset($_SESSION['sess_user_active'])) {
	echo "<meta http-equiv='refresh' content='0.01'>";
}
$_SESSION['sess_user_active'] = null;
$_SESSION['sess_user_id'] = null;
//	$_SESSION['sess_admin'] = null;
$_SESSION['sess_firstname'] = null;
$_SESSION['sess_lastname'] = null;
$_SESSION['sess_email'] = null;
session_destroy();
?>
<section id="login" class="container-custom">
	<!--Recent events-->
	<div class="container container-content">
		<div class="row dark-grey row-custom">
			<div class="col-md-10 col-md-offset-2">
				<h2>Nastąpiło poprawne wylogowanie. Do zobaczenia ;)</h2>
				<br/>
				<p>
					<a class="page-scroll btn btn-primary" href="index.php?link=home" role="button">Powrót na stronę główną &raquo;</a>
					lub 				
					<a class="page-scroll btn btn-info" href="index.php?link=login" role="button">Zaloguj sie ponownie &raquo;</a>
				</p>
			</div>
		</div>
	</div>
</section>