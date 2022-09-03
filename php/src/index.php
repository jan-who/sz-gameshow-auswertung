<?php
// Anzahl an Straßen
define('NUM_OF_STREETS', 3);
define('NUM_OF_GAMES', 2);
define('NUM_SYMBOLE', 11);
define('NUM_ZIELTRINKEN', 225);
define('NUM_SCHUSS', 33);

// Verbindung SQL Server
function new_db()
{
	$db = @new mysqli('sz-gameshow-db', 'testUser', 'testPassword', 'gameshow');
	if(mysqli_connect_errno())
	{
		die('Konnte keine Verbindung zur SQL Datenbank herstellen.<br />'.mysqli_connect_error().'
				('.mysqli_connect_errno().')');
	}
	return $db;
}

function db_aktualisieren($num_rows, $table)
{
	$db = new_db();
	$success = FALSE;
	$result = FALSE;
	while($num_rows > NUM_OF_STREETS)
	{
		$sql = "DELETE FROM
					".$table."
				WHERE
					street_id = ".$num_rows."";
		$db->query($sql);
		$num_rows--;
		$success = TRUE;
	}
	while($num_rows < NUM_OF_STREETS)
	{
		$sql = "INSERT INTO ".$table."
					(street_id)
				VALUES
					(".($num_rows+1).")";
		$db->query($sql);
		$num_rows++;
		$success = TRUE;
	}
	if($success)
	{
		$sql = "SELECT
					*
				FROM
					".$table."";
		$result = $db->query($sql);
	}
	return $result;
}

// Game ID zu Namen umwandeln
function GameIdToName($game_id)
{
	$db = new_db();
	$sql = "SELECT
				name
			FROM
				games
			WHERE
				id = ?";
	$stmt = $db->prepare($sql);
	if(!$stmt)
	{
		die("STMT Error");
	}
	$stmt->bind_param('i', $game_id);
	if(!$stmt->execute())
	{
		die("STMT Execution failed.");
	}
	$stmt->store_result();
	$stmt->bind_result($name);
	$stmt->fetch();
	$stmt->close();
	return $name;
}

// Street ID zu Namen umwandeln
function StreetIdToName($street_id)
{
	$db = new_db();
	$sql = "SELECT
				name
			FROM
				street
			WHERE
				street_id = ?";
	$stmt = $db->prepare($sql);
	if(!$stmt)
	{
		die("STMT Error");
	}
	$stmt->bind_param('i', $street_id);
	if(!$stmt->execute())
	{
		die("STMT Execution failed.");
	}
	$stmt->store_result();
	$stmt->bind_result($name);
	$stmt->fetch();
	$stmt->close();
	return $name;
}

$db = new_db();

// Weiterleitung
if(isset($_GET) AND isset($_GET['page']))
{
	switch($_GET['page'])
	{
		case 'street':
			// Änderung Straßen
			include 'street/street.php';
		break;
		case 'result':
			// Spielergebnis eintragen
			include 'result/result.php';
			break;
		case 'score_game':
			// Einzelwertung
			include 'score/score_game.php';
			break;
		case 'score':
			// Gesamtwertung
			include 'score/score.php';
			break;
		default:
			// Startseite
			include 'index.html';
		break;
	}
}
else
{
	include 'index.html';
}

// Ende Grundgerüst HTML Datei
echo "</body>\n";
echo "</html>\n";
?>