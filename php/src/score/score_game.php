<?php
if(isset($_GET['uid'])) {
	$auswahl = $_GET['uid'];
	$sql = "SELECT  street.name, 
					games.name, 
					scores.points, 
					scores.time, 
					scores.joker, 
					scores.gameshow_points
			FROM scores
			INNER JOIN street ON scores.street_id = street.street_id
			INNER JOIN games ON scores.game_id = games.game_id
			WHERE scores.game_id = ?
			ORDER BY 2 DESC";
	$stmt = $db->prepare($sql);
	$stmt->bind_param('i', $auswahl);
	$stmt->execute();
	$stmt->store_result();
	$stmt->bind_result($street_name, $game_name, $points, $time, $joker, $total_points);
	$total_rows = $stmt->num_rows;

	$reihenfolge = array();
	while($stmt->fetch()) {
		$reihenfolge[$street_name]['total_points'] = $total_points;
		$reihenfolge[$street_name]['points'] = $points;
		$reihenfolge[$street_name]['time'] = $time;
		$reihenfolge[$street_name]['joker'] = $joker;
	}
	$stmt->close();
} else {
	$auswahl = FALSE;
	$sql = "SELECT * FROM games";
	$result = $db->query($sql);
}

include 'score/score_game.html';
?>