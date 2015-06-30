<section class="container-custom">
	<div class="container">
		<div class="row dark-grey row-custom container-first">
			<div class="col-md-offset-1 col-md-10">
				<div class="row">
					<h1 class="object-underline"><?php echo getUserName(); ?></h1>
					<div class="col-md-offset-1 col-md-6 profile-details def-text-color def-text-size dark-grey">
						<div class="row">
							<div class="col-xs-6">Email:</div> 
							<div class="col-xs-6"><a class="pull-right" href="#">Zmień</a></div>
							<div class="col-xs-10 col-xs-offset-1"><?php echo getUserEmail(); ?></div>
						</div>	
						<div class="row">
							<div class="col-xs-6">Telefon:</div>
							<div class="col-xs-6"><a class="pull-right" href="#">Zmień</a></div>
							<div class="col-xs-10 col-xs-offset-1">*******474</div>
						</div>	
						<div class="row">
							<div class="col-xs-6">Hasło:</div>
							<div class="col-xs-6"><a class="pull-right" href="#">Zmień</a></div>
							<div class="col-xs-10 col-xs-offset-1">************</div>
						</div>	
					</div>
					<div class="col-md-4 profile-avatar">
						<p>
							<img class="img-responsive" src="img/avatars/starzec.piotr.12@gmail.com.jpg">
						</p>
						<p class="text-center">
							<button class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span>&nbsp;Zmień</button>
							<button class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span>&nbsp;Usuń</button>
						</p>
					</div>
				</div>
				<div class="row">
					<h2 class="object-underline">Uprawnienia</h2>
				</div>
			</div>
		</div>
	</div>
</section>

