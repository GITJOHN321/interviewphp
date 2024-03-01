<?php
function getAthleteSports($id, $conexion)
{
    $sql = "SELECT v.name AS sede_name, s.name AS sport_name, a.* FROM headquarters v JOIN sports s ON v.headquarters_id = s.headquarters_id JOIN sports_athletes sa ON s.sport_id = sa.sport_id JOIN athletes a ON sa.athlete_id = a.athlete_id WHERE a.athlete_id = $id";
    $result = $conexion->query($sql);

    if ($result->num_rows > 0) {
        $datos = $result;
        return $datos;
    } else {
        $conexion->close();
        return false;
    }
}
function getAthlete($id, $conexion)
{
    $sql = "SELECT * FROM athletes WHERE athlete_id = $id";
    $result = $conexion->query($sql);

    if ($result->num_rows > 0) {
        $datos = $result;
        return $datos;
    } else {
        $conexion->close();
        return false;
    }
}
?>