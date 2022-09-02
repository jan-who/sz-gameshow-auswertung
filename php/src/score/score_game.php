<?php
if(isset($_GET['uid']))
{
	$auswahl = $_GET['uid'];
	$sql = "SELECT
				name, wertung
			FROM
				games
			WHERE
				id = ?";
	$stmt = $db->prepare($sql);
	$stmt->bind_param('i', $auswahl);
	$stmt->execute();
	$stmt->store_result();
	$stmt->bind_result($name, $wertung);
	$stmt->fetch();
	$stmt->close();
	
	$db_game = "game".$auswahl;
	if($wertung == 1 OR $wertung == 2)
	{
		$sql = "SELECT
					street_id,
					times AS points,
					joker,
					points_new
				FROM
					".$db_game."";
	}
	else
	{
		$sql = "SELECT
					*
				FROM
					".$db_game."";
	}
	$result = $db->query($sql);
	
	while($row = $result->fetch_assoc())
	{
		$game_points[$row['street_id']]['joker'] = FALSE;
		if($row['joker'])
		{
			$reihenfolge[$row['street_id']] = $row['points_new']*2;
			$game_points[$row['street_id']]['joker'] = TRUE;
		}
		else
		{
			$reihenfolge[$row['street_id']] = $row['points_new'];
		}
		$game_points[$row['street_id']]['points'] = $row['points'];
	}
	arsort($reihenfolge);
}
else 
{
	$auswahl = FALSE;
	$sql = "SELECT
				*
			FROM
				games";
	$result = $db->query($sql);
}

include 'html/score_game.html';
?>