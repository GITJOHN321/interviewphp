<?php
require '../config/conexion.php';

$idAthletes= $conexion->real_escape_string($_POST['id']);

$sql = $conexion->query("SELECT s.*, a.* FROM sports_athletes sa JOIN sports s ON sa.sport_id = s.sport_id JOIN athletes a ON sa.athlete_id = a.athlete_id WHERE sa.sport_id=$idAthletes");

$result = "<option value='0'>Seleccionar</option>";

while ($row = $sql->fetch_assoc()) {
    $result .= "<option value='" . $row['sport_id'] . "'>" . $row['name'] . "</option>";
}

echo json_encode($result, JSON_UNESCAPED_UNICODE);
?>

