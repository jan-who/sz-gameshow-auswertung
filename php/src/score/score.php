<?php
// Alle Auswertungspunkte auslesen
// Dummy Array mit Werten füllen
if(isset($_GET['which']))
{
	switch($_GET['which'])
	{
		// Für die Tendenz zur vorherigen Platzierung bei der Zwischenauswertung
		// hier angeben, nach welchem Spiel die Zwischenauswertung erfolgt 
		// ($ct_games) und wann die letzte Zwischenauswertung war ($ct_zuvor)
		case 1:
			$ct_games = 2;
			$ct_zuvor = 1;
		break;
		case 2:
			$ct_games = 5;
			$ct_zuvor = 2;
		break;
		case 3:
			$ct_games = 7;
			$ct_zuvor = 5;
		break;
		default:
			$ct_games = NUM_OF_GAMES;
			$ct_zuvor = 0;
		break;
	}

} else {
	$ct_games = NUM_OF_GAMES;
	$ct_zuvor = 0;
}

$reihenfolge = array();
$reihenfolge_zuvor = array();

// Jetziger Spielstand
for($i=1; $i<=NUM_OF_STREETS; $i++)
{
	$reihenfolge[$i] = 0;
	$reihenfolge_zuvor[$i] = 0;
}

// Punkte in Array speichern (Key = Straßen ID, Value = Gesamtpunkt)
for($i=1; $i<=$ct_games; $i++)
{
	$db_game = "game".$i;
	$sql = "SELECT
				*
			FROM
				".$db_game."";
	$results[$i] = $db->query($sql);
	
	while($row = $results[$i]->fetch_assoc())
	{
		if($row['joker'])
		{
			$reihenfolge[$row['street_id']] += $row['points_new']*2;
		}
		else
		{
			$reihenfolge[$row['street_id']] += $row['points_new'];
		}
	} 
}
arsort($reihenfolge);

// Spielstand 1 Spiel zuvor (für Tendenz)
for($i=1; $i<=$ct_zuvor; $i++)
{
	$db_game = "game".$i;
	$sql = "SELECT
				*
			FROM
				".$db_game."";
	$results[$i] = $db->query($sql);
	
	while($row = $results[$i]->fetch_assoc())
	{
		if($row['joker'])
		{
			$reihenfolge_zuvor[$row['street_id']] += $row['points_new']*2;
		}
		else
		{
			$reihenfolge_zuvor[$row['street_id']] += $row['points_new'];
		}
	} 
}
arsort($reihenfolge_zuvor);

$tendenz = array();
$points_before = 0;
$ct_samePlace = 0;
$platzierung = 0;
foreach($reihenfolge_zuvor AS $key => $value)
{
	if($points_before == $value)
	{
		$ct_samePlace++;
	}
	else
	{
		$points_before = $value;
		$platzierung++;
		if($ct_samePlace)
		{
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