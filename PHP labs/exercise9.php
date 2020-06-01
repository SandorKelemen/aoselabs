<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Database Input Form</title>
</head>
<?php

	function phpAlert($msg) {
		echo '<script type="text/javascript">alert("' . $msg . '")</script>';
	}
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "personal";

	// Create connection
	$conn = new mysqli( $servername, $username, $password, $dbname );
	// Check connection
	if ( $conn->connect_error ) {
		die( "Connection failed: " . $conn->connect_error );
	}
?>
<body>
	<h3>Date</h3>
	<form method="post">
		Nume: <input type="text" name="nume"/><br> 
		Prenume: <input type="text" name="prenume"/><br> 
		Tata: <input type="text" name="tata"/><br> 
		Mama: <input type="text" name="mama"/><br> 
		CNP: <input type="number" name="cnp"/><br> 
		Serie si numar CI: <input type="text" name="serie_nr"/><br>
		Data nasterii: <input type="date" name="data_nasterii"/><br> 
		Adresa: <input type="text" name="adresa"/><br> 
		Casatorit (DA/NU): <input type="text" name="casatorit"/><br> 
		Copii (daca e cazul): <input type="text" name="copii"><br>
		<input type="submit" value="Inregistreaza" name="record"/>
	</form>
	<?php
	if ( isset( $_POST[ 'record' ] ) ) {
		$nume = $_POST[ 'nume' ];
		$prenume = $_POST[ 'prenume' ];
		$tata = $_POST[ 'tata' ];
		$mama = $_POST[ 'mama' ];
		$cnp = $_POST[ 'cnp' ];
		$serieCI = $_POST[ 'serie_nr' ];
		$data_nasterii = $_POST[ 'data_nasterii' ];
		$adresa = $_POST[ 'adresa' ];
		$casatorit = $_POST[ 'casatorit' ];
		$copii = $_POST[ 'copii' ];

		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "personal";

		// Create connection
		$conn = new mysqli( $servername, $username, $password, $dbname );
		// Check connection
		if ( $conn->connect_error ) {
			die( "Connection failed: " . $conn->connect_error );
		}


		$sql = "INSERT INTO date_personale VALUES(
			'$nume',
			'$prenume',
			'$tata',
			'$mama',
			'$cnp',
			'$serieCI',
			'$data_nasterii',
			'$adresa',
			'$casatorit',
			'$copii')";
		if ( $conn->query( $sql ) === TRUE ) {
			phpAlert("Inregistrat cu succes!");
		} else {
			phpAlert($conn->error);
		}
		$conn->close();
	}
	?>
</body>
</html>