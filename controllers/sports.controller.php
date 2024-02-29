<?php
require '../config/conexion.php';

$idheadquarters= $conexion->real_escape_string($_POST['id']);

$sql = $conexion->query("SELECT * FROM sports WHERE headquarters_id=$idheadquarters");

$result = "<option value='0'>Seleccionar</option>";

while ($row = $sql->fetch_assoc()) {
    $result .= "<option value='" . $row['sport_id'] . "'>" . $row['name'] . "</option>";
}

echo json_encode($result, JSON_UNESCAPED_UNICODE);
?>