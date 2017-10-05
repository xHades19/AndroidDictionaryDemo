<?php 
//======================================================================
// PE TEST ANDROID
//======================================================================

//-----------------------------------------------------
// Copyright © 2017 - xHadesvn
//-----------------------------------------------------

/* index.php - show data json from database  */

	include 'config.php'; 
	
	function IsNullOrEmptyString($question){
		return (!isset($question) || trim($question)==='');
	}
	
	$lang = $_GET['lang'];
	if(IsNullOrEmptyString($lang) != 0){
		$lang = '1';
	}
	
	if($lang != '0' && $lang != '1'){
		$errorObj = new stdClass();
		$errorObj->status = false;
		$errorObj->message = 'Incorrect Lang';
		echo json_encode($errorObj);
		return;
	}
	
	$str_lang = ($lang == '1') ? 'En-en' : 'En-vn';
	$mysqli = new mysqli($host, $username, $password, $dbname);
	$myArray = array();
	$query = "SELECT * FROM `universaldict` WHERE lang = '$str_lang'";
	if ($result = $mysqli->query($query)) {

		$tempArray = array();
        while($row = $result->fetch_object()) {
            $tempArray = $row;
            array_push($myArray, $tempArray);
        }
		 echo json_encode($myArray);
	}

	$result->close();
	$mysqli->close();

?>