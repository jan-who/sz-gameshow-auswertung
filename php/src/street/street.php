<?php
// Ergebnisse speichern
if(isset($_POST) AND isset($_POST['street_save']))
{
	for($i=1; $i<=NUM_OF_STREETS; $i++)
	{
		$sql = "UPDATE
					street
				SET
					name = ?
				WHERE
					street_id = ?";
		$stmt = $db->prepare($sql);
		$stmt->bind_param('si', $_POST[$i], $i);
		$stmt->execute();
		$stmt->close();
	}
	$save = TRUE;
}


// Alles auslesen
$sql = "SELECT
			*
		FROM
			street";
$result = $db->query($sql);

$tmp = db_aktualisieren($result->num_rows, 'street');
if($tmp)
{
	$result = $tmp;
}

include 'html/street.html';
?>