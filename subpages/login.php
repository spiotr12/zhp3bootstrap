<section id="login" class="container-custom">
	<!--Recent events-->
	<div class="container container-content">
		<div class="row dark-grey row-custom">
			<?php
			if (!empty($_GET['error']) && $_GET['error'] == 'notexist') {
				?>
				<div class="col-md-10 col-lg-offset-2">
					<h3>
						<label class="label label-danger">
							<?php
								echo "Użytkownik nie istnieje";
							?>
						</label>
					</h3>
				</div>
				<?php
			}
			?>
			<?php
			if (!empty($_GET['error']) && $_GET['error'] == 'regsuccess') {
				?>
				<div class="col-md-10 col-lg-offset-2">
					<h3>
						<label class="label label-success">
							<?php
								echo "Użytkownik został poprawnie zarejestrowany";
							?>
						</label>
					</h3>
				</div>
				<?php
			}
			?>
			<?php
			if (!empty($_GET['error']) && $_GET['error'] == 'success') {
				?>
				<div class="col-md-10 col-lg-offset-2">
					<h3>
						<label class="label label-success">
							<?php
								echo "Nastąpiło poprawne zalogowanie do systemu!";
							?>
						</label>
					</h3>
				</div>
				<?php
			}
			?>
			<div class="col-md-4 col-md-offset-2">
				<h2>Zaloguj się</h2>
				<form role="form" name="login" action="./php/login.php" method="post">
					<div class="form-group">
						<label for="email">Email:</label>
						<input type="email" class="form-control" name="email" id="email" placeholder="email@example.com"/>
					</div>
					<div class="form-group">
						<label for="pwd">Hasło:</label>
						<input type="password" class="form-control" name="pwd" id="pwd" placeholder="hasło"/>
					</div>
					<button type="submit" class="btn btn-success">Zaloguj</button>
				</form>
			</div>
			<div class="col-md-4 col-md-offset-1">
				<h2>Nie masz jeszcze konta?</h2>
				<br/>
				<p><a class="page-scroll btn btn-primary" href="#register" role="button">Zarejestruj się &raquo;</a></p>
			</div>

		</div>
	</div>
</section>

<section id="register" class="container-custom">
	<!--Recent events-->
	<div class="container container-content">
		<div class="row dark-grey row-custom">
			<?php
			if (!empty($_GET['error']) && $_GET['error'] == 'pwdmissmatch') {
				?>
				<div class="col-md-10 col-lg-offset-2">
					<h3>
						<label class="label label-danger">
							<?php
								echo "Hasła się nie zgadziają";
							?>
						</label>
					</h3>
				</div>
				<?php
			}
			?>
			<div class="col-md-10 col-md-offset-2">
				<h2>Zarejestruj się</h2>
			</div>
			<form role="form" name="register" action="./php/register.php" method="post">
				<div class="col-md-4 col-md-offset-2">
					<div class="form-group">
						<label for="email">Email:</label>
						<input type="email" class="form-control" name="email" id="email" placeholder="email@example.com">
					</div>
					<div class="form-group">
						<label for="pwd">Hasło:</label>
						<input type="password" class="form-control" name="pwd" id="pwd" placeholder="hasło"/>
					</div>
					<div class="form-group">
						<label for="pwdrep">Powtórz hasło:</label>
						<input type="password" class="form-control" name="pwdrep" id="pwdrep" placeholder="powtórz hasło""/>
					</div>
				</div>
				<div class="col-md-3 col-md-offset-1">
					<h3>Wymagane dane</h3>
					<div class="form-group">
						<label for="firstname">Imię:</label>
						<input type="text" class="form-control" name="firstname" id="firstname" placeholder="imię"/>
					</div>
					<div class="form-group">
						<label for="lastname">Nazwisko:</label>
						<input type="text" class="form-control" name="lastname" id="lastname" placeholder="nazwisko"/>
					</div>
				</div>
				<div class="col-md-10 col-md-offset-2">
					<button type="submit" class="btn btn-primary">Zarejestruj się</button>
				</div>
			</form>

		</div>
	</div>
</section>