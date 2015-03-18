<?php

//connect to 
include ('../etc/db_access.php');
$db_con = mysqli_connect($db_host, $db_username, $db_password, $db_dbname);

// polish characters
include './polish_characters.php';

$what = $_POST['editorFor'];
$do = $_POST['editorDo'];
$query;
$header = "Location: ../index.php?link=";
//---------------------------
if ($what == 'song') {
	$header = $header . "songbook";
	// escape text
	$title = mysqli_real_escape_string($db_con, $_POST['title']);
	$lyrics = mysqli_real_escape_string($db_con, $_POST['lyrics']);
	$artist = mysqli_real_escape_string($db_con, $_POST['artist']);
	$addedBy = mysqli_real_escape_string($db_con, $_POST['addedBy']);
	// create query
	if ($do == 'add') { // if the operation is to add
		$query = "
			INSERT INTO songbook ( title, lyrics, artist, addedBy ) 
			VALUES ( '$title', '$lyrics', '$artist', '$addedBy' )
		";
	} else if ($do == 'edit') { // if operiation is to edit
		$id = $_POST['id'];
		$query = "
			UPDATE songbook
			SET title = '$title', lyrics = '$lyrics', artist = '$artist', addedBy = '$addedBy'
			WHERE id = '$id';
		";
	}
}
//---------------------------
//echo $query;
mysqli_query($db_con, $query);
mysqli_close($db_con);
header($header);
?>