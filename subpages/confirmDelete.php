<title>Potwierdź usunięcie</title>
<section id="login" class="container-custom">
	<!--Recent events-->
	<div class="container container-content">
		<div class="row dark-grey row-custom">
			<div class="col-md-10 col-md-offset-2">
				<h2>Potwierdź usunięcie elementu</h2>
				<br/>
				<form role="form" name="delete" action="./php/delete.php" method="post">
					<input type="hidden" name="what" value="<?php echo $_GET['what']; ?>">
					<input type="hidden" name="id" value="<?php echo $_GET['id']; ?>">
					<p>
						<button class="btn btn-danger" type="submit" role="button"><span class='glyphicon glyphicon-trash'></span> Tak potwierdzam</button>
						lub 
						<a class="btn btn-success" onclick="history.back()"><span class='glyphicon glyphicon-floppy-disk'></span> Anuluj</a>
					</p>
				</form>
			</div>
		</div>
	</div>
</section>