<?php

$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$password = $_POST['pwd'];
$passwordRepeat = $_POST['pwdrep'];
$email = $_POST['email'];

if ($password != $passwordRepeat) {
	header('Location: ../index.php?link=login&error=pwdmissmatch#register');
}

//TODO: Check if user exist already

$hash = hash('sha256', $password);

function createSalt() {
	$text = md5(uniqid(rand(), true));
	return substr($text, 0, 3);
}

$salt = createSalt();
$passwordEncript = hash('sha256', $salt . $hash);

//connect to 
include ('../etc/db_access.php');
$db_con = mysqli_connect($db_host, $db_username, $db_password, $db_dbname);

//sanitize username
//$reg_username = mysqli_real_escape_string($db_con, $reg_username);

$query = "
		INSERT INTO member ( firstname, lastname, password, email, salt ) 
		VALUES ( '$firstname', '$lastname', '$passwordEncript', '$email', '$salt' )
	";

//added $db_con variable in order to connect to our database.
mysqli_query($db_con, $query);

mysqli_close($db_con);

header('Location: ../index.php?link=login&error=regsuccess');
?>