<?php
// Ergebnisse speichern
if(isset($_POST)) {
	if (isset($_POST['submit_game_save'])) {
		$i=1;
		while(isset($_POST[$i])) {
			$game_mode = (int) $_POST['select_game_mode_'.$i];
			
			$diff_points = NULL;
			if(isset($_POST['diff_'.$i]) && $game_mode == 6) {
				$diff_points = (int) $_POST['diff_'.$i];
			}
            
			$sql = "UPDATE games
					SET name = ?, game_mode = ?, diff_points = ?
					WHERE game_id = ?";
			$stmt = $db->prepare($sql);
			$stmt->bind_param('siii', $_POST[$i], $game_mode, $diff_points, $i);
			$stmt->execute();
			$stmt->close();

            $i++;
		}
		$save_names = TRUE;

	} elseif (isset($_POST['submit_num_games'])) {
		// current number of games
		$sql = "SELECT COUNT(*) AS anzahl FROM games";
		$row = $db->query($sql)->fetch_assoc();
		$current_games = $row['anzahl'];
		
		$num_games = $_POST['num_games'];

		// delete last rows, if games should be less
		if ($num_games < $current_games) {
			for ($i=$current_games; $i>$num_games; $i--) {
				$sql = "DELETE FROM games WHERE game_id = ".$i;
				$db->query($sql);
			}
		}
		// add more rows, if streets should be more
		elseif($num_games > $current_games) {
			for ($i=0; $i<($num_games-$current_games); $i++) {
				$sql = "INSERT INTO games (game_id, name, game_mode, diff_points) VALUES (".($i+1+$current_games).", '', 0, NULL)";
				$db->query($sql);
			}
		}

		$save_nums = TRUE;
	}
}


// Alles auslesen
$sql = "SELECT * FROM game_mode";
$result = $db->query($sql);
$game_mode = array();
while ($row = $result->fetch_assoc()) {
    $game_mode[$row['id']] = $row['description'];
}

function game_mode_selection($game_mode, $row_id, $selection) {
    $ids = array_keys($game_mode);

    echo "  <td>";
    echo '    <select name="select_game_mode_'.$row_id.'" id="'.$row_id.'">';

    foreach($ids as $id) {
        if ($selection == $id) {
            echo '      <option value="'.$id.'" selected="selected">'.$game_mode[$id].'</option>\n';
        } else {
            echo '      <option value="'.$id.'">'.$game_mode[$id].'</option>\n';
        }
    }

    echo "    </select>";
    echo "  </td>\n";
}

$sql = "SELECT * FROM games";
$games = $db->query($sql);
$count = $games->num_rows;

require 'game.html';
?>