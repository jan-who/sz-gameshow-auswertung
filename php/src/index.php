<?php
require 'sql_functions.php';
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
		case 'game':
			// Spiel hinzuf&uuml;gen
			include 'game/game.php';
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