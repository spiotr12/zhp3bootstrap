<?php

ob_start();
session_start();

$email = $_POST['email'];
$password = $_POST['pwd'];

include ('../etc/db_access.php');
$db_con = mysqli_connect($db_host, $db_username, $db_password, $db_dbname);

//$email = mysqli_real_escape_string($db_con, $email);
$query = "
		SELECT *
		FROM member
		WHERE email = '$email';";

$result = mysqli_query($db_con, $query);

if (mysqli_num_rows($result) == 0) { // User not found. So, redirect to login_form again.
	header('Location: ../index.php?link=login&error=notexist#login');
}

$userData = mysqli_fetch_array($result, MYSQL_ASSOC);
$hash = hash('sha256', $userData['salt'] . hash('sha256', $password));

if ($hash != $userData['password']) {
	echo $hash;
	echo "<br/>";
	echo $userData['password'];
	// Incorrect password. So, redirect to login_form again.
//	header('Location: ../index.php?link=login&error=wrongpwd#login');
} else {
	// Redirect to home page after successful login.
	session_regenerate_id();
	$_SESSION['sess_user_active'] = true;
	$_SESSION['sess_user_id'] = $userData['id'];
	$_SESSION['sess_lord'] = $userData['admin'];
	$_SESSION['sess_firstname'] = $userData['firstname'];
	$_SESSION['sess_lastname'] = $userData['lastname'];
	$_SESSION['sess_email'] = $userData['email'];
	//$_SESSION['sess_avatar'] = $userData['avatar'];
	session_write_close();
	header('Location: ../index.php?link=login&error=success#login');
}
?>