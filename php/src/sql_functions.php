<?php
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
?>