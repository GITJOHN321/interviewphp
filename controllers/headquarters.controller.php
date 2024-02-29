<?php

function getheadquarters($conexion){
    $sql = "select * from headquarters";
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