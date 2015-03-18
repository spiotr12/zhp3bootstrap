<?php

//------- DB CONNECTION START ------------------------------
//------- DB CONNECTION END ------------------------------
// gets all (and just) the files form given directory
function getFilesFromFolder($directory) {
	// get just images files list
	$images = scandir($directory, true);
	unset($images[count($images) - 1]);
	unset($images[count($images) - 1]);
	return $images;
}

// checks if the subpage is open, an dif not add full link to anchor, else keep just the #id
function isInParentTab($subpage, $parentTab) {
	if ($subpage != $parentTab) {
		echo 'index.php?link=' . $parentTab;
	} else {
		echo '';
	}
}

// checks if the user is admin. first test if anyone is loged in
function isCurrentUserAdmin() {
	if (isset($_SESSION['sess_user_active']) && $_SESSION['sess_user_active'] == true) {
		//connect to 
		include ('./etc/db_access.php');
		$db_con = mysqli_connect($db_host, $db_username, $db_password, $db_dbname);

		$email = $_SESSION['sess_email'];
		$query = "
				SELECT admin
				FROM member
				WHERE email = '$email';";

		$result = mysqli_query($db_con, $query);
		// fetch array with data
		$userData = mysqli_fetch_array($result, MYSQL_ASSOC);

		if ($userData['admin'] == false) {
			return true;
		} else {
			return false;
		}
	} else {
		return false;
	}
}

?>