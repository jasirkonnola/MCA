<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mca";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
	die ("Failed". $conn->connect_error);
}
echo "Success";

// $sql = "CREATE TABLE guestsTable (
// 	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
// 	firstname VARCHAR(30) NOT NULL,
// 	lastname VARCHAR(30) NOT NULL,
// 	email VARCHAR(30),
// 	reg_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
// )";

// if ($conn-> query( query: $sql)=== TRUE) {
// 	echo "Table Created";
// }
// else{
// 	echo "error in creating table".$conn->error;
// }

// $insert = "Insert into guestsTable(`firstname`,`lastname`,`email`)
//             Values('Badusha','Mohammed','')";
// if($conn -> query( $insert) === TRUE) {
//     echo "Data Inserted";
// }
// else {
//     echo "error in inserting into table".$conn->error;
// }

$dis = "SELECT id, firstname, lastname, email FROM guestsTable";
$result = $conn->query($dis);

if ($result->num_rows > 0) {
	// output data of each row
	while($row = $result->fetch_assoc()) {
	  echo "id: " . $row["id"]. $row["firstname"]. " " . $row["lastname"].$row["email"]. "<br>";
	}
  } else {
	echo "0 results";
  }

// $conn -> query($result);

$conn->close();
?>