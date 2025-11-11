<?php
$players = [
    "Virat Kohli",
    "Dilbar",
    "KL Rahul"
];
echo "<table style='width:100%; border: 1px solid black; border-collapse: collapse;'>";
echo "<tr style='border: 1px solid black;'><th style='border: 1px solid black;'>S.No</th><th style='border: 1px solid black;'>Player Names</th></tr>";

$serial_num = 1;
foreach ($players as $player) {
    echo "<tr style='border: 1px solid black;'><td style='border: 1px solid black;'>$serial_num</td><td style='border: 1px solid black;'>$player</td></tr>";
    $serial_num++;
}

echo "</table>";
?>
