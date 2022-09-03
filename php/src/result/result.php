<?php
// Wertung = 0 --> Punktspiel
// Wertung = 1 --> Zeitspiel, niedrigste Zeit
// Wertung = 2 --> Zeitspiel, höchste Zeit

// Speicher die eingetragenen Ergebnisse
if(isset($_POST))
{
	// Schaut ob ein bestimmtes Spiel ausgewählt wurde
	if(isset($_POST['game-select']))
	{
		$game = $_POST['game'];
		$tmp = explode(": ", $game);
		$game_id = $tmp[0];
	}
	
	// Ergebnis speichern
	if(isset($_POST['result-save']))
	{
		$game_id = $_POST['id'];
		// Punkte oder Zeiten?
		$sql = "SELECT
					wertung
				FROM
					games
				WHERE
					id = ?";
		$stmt = $db->prepare($sql);
		$stmt->bind_param('i', $game_id);
		$stmt->execute();
		$stmt->store_result();
		$stmt->bind_result($wertung);
		$stmt->fetch();
		$stmt->close();
		$db_game = "game".$_POST['id'];
		$joker = NULL;
		for($i=1; $i<=NUM_OF_STREETS; $i++)
		{ 
		if(isset($_POST['joker']))
		{
			foreach($_POST['joker'] AS $value)
			{
				if($i == $value)
				{
					$joker = 1;
				}
			}
		}
			switch($wertung)
			{
				case 0:
				case 3:
					if($_POST[$i] == 0 AND $wertung != 3)
					{
						$points = NULL;
					}
					else
					{
						$points = $_POST[$i];
					}
					if($game_id == 10)
					{
						$tmp = $i."_2";
						if($_POST[$tmp])
						{
							$times = $_POST[$tmp];
						}
						else
						{
							$times = NULL;
						}
						$sql = "UPDATE
									".$db_game."
								SET
									points = ?,
									times = ?,
									joker = ?
								WHERE
									street_id = ?";
						$stmt = $db->prepare($sql);
						$stmt->bind_param('isii', $points, $times, $joker, $i);
					}
					else
					{
						$sql = "UPDATE
									".$db_game."
								SET
									points = ?,
									joker = ?
								WHERE
									street_id = ?";
						$stmt = $db->prepare($sql);
						$stmt->bind_param('iii', $points, $joker, $i);
					}
					$stmt->execute();
					$stmt->close();
				break;
				case 1:
				case 2:
					$time = $_POST[$i];
					if(!$time)
					{
						$time = NULL;
					}
					$sql = "UPDATE
								".$db_game."
							SET
								times = ?,
								joker = ?
							WHERE
								street_id = ?";
					$stmt = $db->prepare($sql);
					$stmt->bind_param('sii', $time, $joker, $i);
					$stmt->execute();
					$stmt->close();
				break;
			}
			$joker = NULL;
		}			
		$save = TRUE;
		
		// Daten laden für Auswertungspunkte
		switch($wertung)
		{
			case 0:
				$sql = "SELECT
							*
						FROM
							".$db_game."
						ORDER BY
							points DESC,
							times ASC";
			break;
			case 1:
				$sql = "SELECT
							times AS points,
							street_id
						FROM
							".$db_game."
						ORDER BY
							times ASC";
			break;
			case 2:
				$sql = "SELECT
							times AS points,
							street_id
						FROM
							".$db_game."
						ORDER BY
							times DESC";
			break;
			case 3:
				// Zieltrinken
				if($game_id == 7)
				{
					$sql = "SELECT
								*
							FROM
								".$db_game."
							ORDER BY
								ABS(".NUM_ZIELTRINKEN."-points) ASC";
				}
				// Schussgeschwindigkeit
				elseif($game_id == 9)
				{
					$sql = "SELECT
								*
							FROM
								".$db_game."
							ORDER BY
								ABS(".NUM_SCHUSS."-points) ASC";
				}
				// Symbole zählen
				elseif($game_id == 12)
				{
					$sql = "SELECT
								*
							FROM
								".$db_game."
							ORDER BY
								ABS(".NUM_SYMBOLE."-points) ASC";
				}
			break;
		}
		$auswertung = $db->query($sql);
	
		// Auswertungspunkte erstellen
		$points_auswertung = NUM_OF_STREETS+1;
		$ct_samePlace = 0;
		if(!$wertung OR $wertung == 3)
		{
			$points_before = 0; 
			if($game_id == 10)
			{
				$time_before = "00:00:00";
			}
		}
		else 
		{
			$points_before = "00:00:00";
		}
		
		while($row = $auswertung->fetch_assoc())
		{ 
			// Bei untersch. Punkten (= Platzierungen)
			if($points_before != $row['points'])
			{
				if($wertung == 3 AND $game_id == 7 AND
						abs($row['points']-NUM_ZIELTRINKEN) == abs($points_before-NUM_ZIELTRINKEN)
					OR $wertung == 3 AND $game_id == 12 AND
						abs($row['points']-NUM_SYMBOLE) == abs($points_before-NUM_SYMBOLE)
					OR $wertung == 3 AND $game_id == 9 AND
						abs($row['points']-NUM_SCHUSS) == abs($points_before-NUM_SYMBOLE))
				{
					$ct_samePlace++;
				} 
				else
				{
					$points_before = $row['points'];
					if($game_id == 10)
					{
						$time_before = $row['times'];
					}
					
					$points_auswertung--;
					if($ct_samePlace)
					{
						$points_auswertung-=$ct_samePlace;
						$ct_samePlace = 0;
					}
				}
			}
			else
			{
				if($game_id == 10)
				{
					if($time_before == $row['times'])
					{
						$ct_samePlace++;
					}
					else
					{
						$points_auswertung--;
					}
				}
				else
				{
					$ct_samePlace++;
				}
			}
			$sql = "UPDATE
						".$db_game."
					SET
						points_new = ?
					WHERE
						street_id = ?";
			$stmt = $db->prepare($sql);
			$stmt->bind_param('ii', $points_auswertung, $row['street_id']);
			$stmt->execute();
			$stmt->close();
		}
	}
}

// Rohdaten von allen Spielen zur Auswahl laden
$sql = "SELECT
			*
		FROM
			games";
$result = $db->query($sql);

// Bereits gespeicherte Punkte laden
if(isset($game_id))
{
	$db_game = "game".$game_id;
	
	// Punkte oder Zeiten?
	$sql = "SELECT
				wertung
			FROM
				games
			WHERE
				id = ?";
	$stmt = $db->prepare($sql);
	$stmt->bind_param('i', $game_id);
	$stmt->execute();
	$stmt->store_result();
	$stmt->bind_result($wertung);
	$stmt->fetch();
	$stmt->close();
	
	// Alle Daten laden
	$sql = "SELECT
				*
			FROM
				".$db_game."";
	$points = $db->query($sql);

	$tmp = db_aktualisieren($points->num_rows, $db_game);
	if($tmp)
	{
		$points = $tmp;
	}
}
				
include 'result/result.html';
?>