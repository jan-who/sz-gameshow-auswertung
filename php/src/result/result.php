<?php
function select_game($game_id, $db) {
	$sql = "SELECT name, game_mode FROM games WHERE game_id = ?";
	$stmt = $db->prepare($sql);
	$stmt->bind_param('i', $game_id);
	$stmt->execute();
	$stmt->store_result();
	$stmt->bind_result($game_name, $game_mode);
	$stmt->fetch();
	$stmt->close();

	$sql = "SELECT description FROM game_mode WHERE id = ?";
	$stmt = $db->prepare($sql);
	$stmt->bind_param('i', $game_mode);
	$stmt->execute();
	$stmt->store_result();
	$stmt->bind_result($game_mode_text);
	$stmt->fetch();
	$stmt->close();

	$sql = "SELECT * FROM street";
	$streets = $db->query($sql);

	$scores = array();
	$sql = "SELECT street_id, points, time, joker, gameshow_points FROM scores WHERE game_id = ?";
	$stmt = $db->prepare($sql);
	$stmt->bind_param('i', $game_id);
	$stmt->execute();
	$stmt->store_result();
	$stmt->bind_result($street_id, $points, $time, $joker, $gameshow_points);
	while($stmt->fetch()) {
		$scores[$street_id]['points'] = $points;
		$scores[$street_id]['time'] = $time;
		$scores[$street_id]['joker'] = $joker;
		$scores[$street_id]['gameshow_points'] = $gameshow_points;
	}
	$stmt->close();

	$return = array();
	$return['streets'] = $streets;
	$return['game_id'] = $game_id;
	$return['game_name'] = $game_name;
	$return['game_mode'] = $game_mode;
	$return['game_mode_text'] = $game_mode_text;
	$return['scores'] = $scores;
	return $return;
}

function calculate_gameshow_points($game_mode, $game_id, $db) {

	$join = "";
	switch($game_mode) {
		case 1: 
			$evaluation = "DENSE_RANK() OVER (ORDER BY points ASC)";
		break;
		case 2:
			$evaluation = "DENSE_RANK() OVER (ORDER BY points ASC, time DESC)";
		break;
		case 3:
			$evaluation = "DENSE_RANK() OVER (ORDER BY points DESC)";
		break;
		case 4:
			$evaluation = "DENSE_RANK() OVER (ORDER BY time DESC)";
		break;
		case 5:
			$evaluation = "DENSE_RANK() OVER (ORDER BY time ASC)";
		break;
		case 6:
			$evaluation = "DENSE_RANK() OVER (ORDER BY ABS(g.diff_points-s.points) DESC)";
			$join = "INNER JOIN games AS g ON s.game_id = g.game_id";
		break;
		default:
			echo "Unbekannter game_mode";
			return;
	}

	$sql = "UPDATE scores AS s,
				   (SELECT s.street_id, " . $evaluation . " * (s.joker+1) AS gameshow_points
					FROM scores AS s " . $join . " WHERE s.game_id = ?) AS gs
			SET s.gameshow_points = gs.gameshow_points
			WHERE s.street_id = gs.street_id AND s.game_id = ?";
	$stmt = $db->prepare($sql);
	$stmt->bind_param('ii', $game_id, $game_id);
	$stmt->execute();
	$stmt->close();

	return;
}

// Speicher die eingetragenen Ergebnisse
if(isset($_POST)) {
	// Schaut ob ein bestimmtes Spiel ausgewählt wurde
	if(isset($_POST['submit_game_select'])) {
		$game = $_POST['game'];
		$tmp = explode(": ", $game);
		$game_id = (int) $tmp[0];

		$game = select_game($game_id, $db);
	}
	
	// Ergebnis speichern
	if(isset($_POST['submit_game_result'])) {
		$game_id = (int) $_POST['game_id'];

		// Spiel entfernen und komplett neu eintragen
		$sql = "DELETE FROM scores WHERE game_id = ?";
		$stmt = $db->prepare($sql);
		$stmt->bind_param('i', $game_id);
		$stmt->execute();
		$stmt->close();

		$i=1;
		while(isset($_POST['street_'.$i])) {
			$points = NULL;
			if(isset($_POST[$i.'_points'])) {
				$points = $_POST[$i.'_points'];
			}
			$time = NULL;
			if(isset($_POST[$i.'_time'])) {
				$time = $_POST[$i.'_time'];
			}
			$joker = 0;
			if(isset($_POST[$i.'_joker'])) {
				$joker = 1;
			}

			$sql = "INSERT INTO scores (street_id, game_id, points, time, joker) VALUES (?,?,?,?,?)";
			$stmt = $db->prepare($sql);
			$stmt->bind_param('iiisi', $i, $game_id, $points, $time, $joker);
			$stmt->execute();
			$stmt->close();

			$i++;
		}
		calculate_gameshow_points((int) $_POST['game_mode'], $game_id, $db);

		$game = select_game($game_id, $db);
	}
}

// Rohdaten von allen Spielen zur Auswahl laden
$sql = "SELECT game_id, name FROM games";
$games = $db->query($sql);
				
require 'result/result.html';
?>