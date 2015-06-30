<?php

$doc = $_POST['currentFile'];
$content = $_POST['content'];
echo "doc: " . $doc . "<br/>";
echo "content: " . $content . "<br/>";

// save to file
if ($doc !== null) {
	file_put_contents("../doc/" . $doc, $content);
}

header ("Location: ../index.php?link=adminTools");
?>