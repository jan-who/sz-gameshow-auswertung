<?php
// Ergebnisse speichern
if(isset($_POST)) {
	if (isset($_POST['submit_street_save'])) {
		$i=1;
		while(isset($_POST[$i])) {
			$sql = "UPDATE
						street
					SET
						name = ?
					WHERE
						street_id = ?";
			$stmt = $db->prepare($sql);
			$stmt->bind_param('si', $_POST[$i], $i);
			$stmt->execute();
			$stmt->close();

			$i++;
		}
		$save_names = TRUE;
		
	} elseif (isset($_POST['submit_num_streets'])) {
		// current number of streets
		$sql = "SELECT COUNT(*) AS anzahl FROM street";
		$row = $db->query($sql)->fetch_assoc();
		$current_streets = $row['anzahl'];
		
		$num_streets = $_POST['num_streets'];

		// delete last rows, if streets should be less
		if ($num_streets < $current_streets) {
			for ($i=$current_streets; $i>$num_streets; $i--) {
				$sql = "DELETE FROM street WHERE street_id = ".$i;
				$db->query($sql);
			}
		}
		// add more rows, if streets should be more
		elseif($num_streets > $current_streets) {
			for ($i=0; $i<($num_streets-$current_streets); $i++) {
				$sql = "INSERT INTO street VALUES (".($i+1+$current_streets).", '')";
				$db->query($sql);
			}
		}

		$save_nums = TRUE;
	}
}


// Alles auslesen
$sql = "SELECT
			*
		FROM
			street";
$result = $db->query($sql);
$count = $result->num_rows;

require 'street.html';
?>