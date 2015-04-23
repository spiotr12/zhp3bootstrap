<?php

//connect to 
include ('../etc/db_access.php');
$db_con = mysqli_connect($db_host, $db_username, $db_password, $db_dbname);

// polish characters
include './polish_characters.php';

$what = $_POST['what'];
$id = $_POST['id'];
$query;
$header = "Location: ../index.php?link=";
//---------------------------
if ($what == 'song') {
	// --------SONG EDITOR--------
	$header = $header . "songbook";
	// create query
	$query = "
		DELETE FROM songbook
		WHERE id = '$id';
	";
} else if ($what == 'event') {
	// --------EVENT EDITOR--------
	$header = $header . "events";
	// create query
	$query = "
		DELETE FROM events
		WHERE id = '$id';
	";
	
}
//---------------------------
//echo $query;
mysqli_query($db_con, $query);
mysqli_close($db_con);
header($header);
?>

