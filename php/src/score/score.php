<?php
$sql = "SELECT COUNT(*) AS anzahl FROM games";
$result = $db->query($sql);
$games = $result->fetch_assoc();
$total_games = $games['anzahl'];
$ct_games = $total_games;
$ct_zuvor = 1;

// Alle Auswertungspunkte auslesen
// Dummy Array mit Werten füllen
if(isset($_GET['game']) && isset($_GET['trend']))
{
	$ct_games = (int) $_GET['game'];
	$ct_zuvor = (int) $_GET['trend'];
}

$reihenfolge = array();
$reihenfolge_zuvor = array();

// Punkte in Array speichern (Key = Straßen ID, Value = Gesamtpunkt)
$sql = "SELECT street.name, SUM(scores.gameshow_points) AS total_points 
		FROM scores
		INNER JOIN street ON scores.street_id = street.street_id
		WHERE scores.game_id <= ?
		GROUP BY 1
		ORDER BY 2 DESC";
$stmt = $db->prepare($sql);
$stmt->bind_param('i', $ct_games);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($street_name, $total_points);
while($stmt->fetch())
{
	$reihenfolge[$street_name] = $total_points;
}
$stmt->close();

// Spielstand 1 Auswertung zuvor (für Tendenz)
$sql = "SELECT street.name, SUM(scores.gameshow_points) AS total_points 
		FROM scores
		INNER JOIN street ON scores.street_id = street.street_id
		WHERE scores.game_id <= ?
		GROUP BY 1
		ORDER BY 2 DESC";
$stmt = $db->prepare($sql);
$stmt->bind_param('i', $ct_zuvor);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($street_name, $total_points);
while($stmt->fetch()) {
	$reihenfolge_zuvor[$street_name] = $total_points;
}
$stmt->close();

$tendenz = array();
$points_before = 0;
$ct_samePlace = 0;
$platzierung = 0;
foreach($reihenfolge_zuvor AS $key => $value)
{
	if($points_before == $value) {
		$ct_samePlace++;
	} else {
		$points_before = $value;
		$platzierung++;
		if($ct_samePlace) {
			$platzierung+=$ct_samePlace;
			$ct_samePlace = 0;
		}
	}
	$tendenz[$key] = $platzierung;
}

// Variablen wieder löschen (werden gleich wieder initialisiert)
unset($platzierung);
unset($ct_samePlace);
unset($points_before);

include 'score/score.html';
?>