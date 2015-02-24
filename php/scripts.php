<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function getFilesFromFolder($directory) {
	// get just images files list
	$images = scandir($directory, true);
	unset($images[count($images) - 1]);
	unset($images[count($images) - 1]);
	return $images;
}

?>