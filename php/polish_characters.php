<?php 
	// ADD AFTER mysqli_connect !!!!!!!!!

	//polish characters
	$result = mysqli_query ($db_con, "SET character_set_client = 'utf8';"); 
	$result = mysqli_query ($db_con, "SET character_set_connection = 'utf8';"); 
	$result = mysqli_query ($db_con, "SET character_set_results = 'utf8';"); 
	$result = mysqli_query ($db_con, "SET character_set_system = 'utf8';"); 
	$result = mysqli_query ($db_con, "SET collation_connection = 'utf8';");
?>