<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// gets all (and just) the files form given directory
function getFilesFromFolder($directory) {
	// get just images files list
	$images = scandir($directory, true);
	unset($images[count($images) - 1]);
	unset($images[count($images) - 1]);
	return $images;
}

// execute query and returns a map with values
function executeQuery($sql) {
	
}

// checks if the subpage is open, an dif not add full link to anchor, else keep just the #id
function isInParentTab($subpage, $parentTab){
	if ($subpage != $parentTab){
		echo 'index.php?link=' . $parentTab;
	} else {
		echo '';
	}
}

?>