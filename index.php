<?php
require 'config/conexion.php';
require 'controllers/headquarters.controller.php';
require 'controllers/consult.php';
require 'components/subtitle.component.php';

$dataHeadquarters = getheadquarters($conexion);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interview</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <div class="container">
        <div class="panel">
            <h1 class="head">Consulta Atletas</h1>
            <div class="content">
                <form action="index.php" method="post">

                    <div class="">
                        <p class="grid grid-cols-2">
                            <label for="headquarters">Sedes: </label>
                            <select class="btn-select" name="headquarters" id="headquarters">
                                <option value="">Seleccionar</option>
                                <?php while ($row = $dataHeadquarters->fetch_object()) { ?>

                                    <option value="<?= $row->headquarters_id ?>">
                                        <?= $row->name ?>
                                    </option>
                                    <?php
                                }
                                ?>
                            </select>
                        </p>
                        <p class="grid grid-cols-2">
                            <label for="sports">Deportes: </label>
                            <select class="btn-select" name="sports" id="sports">
                                <option value="">Seleccionar</option>
                            </select>
                        </p>
                        <p class="grid grid-cols-2">
                            <label for="athletes">Atletas: </label>
                            <select class="btn-select" name="athletes" id="athletes">
                                <option value="">Seleccionar</option>
                            </select>
                        </p>
                    </div>
                    <p>
                        <button class="btn primary" type="submit">Consultar</button>
                    </p>
                </form>
                <div>
                    <?php
                    if (!empty($_POST['athletes'])) {
                        $id_athlete = $_POST['athletes'];
                        $i= 0;
                        $data = getAthleteSports($id_athlete, $conexion);
                        $data_athlete = getAthlete($id_athlete, $conexion)->fetch_object();
                      
                        subtitles("Nombre: ", $data_athlete->name);
                        subtitles("Edad: ", $data_athlete->age);
                        subtitles("Sexo: ", $data_athlete->gender);
                        while ($row = $data->fetch_object()) {
                            $i= $i+ 1;
                            subtitles("Sede de entrenamiento: ", $row->sede_name);
                            subtitles("Deporte que practica en la sede:", $row->sport_name);

                        }
                        subtitles("#Deportes: ", $i);
                        ?>

                        <?php
                    }
                    ;
                    ?>
                </div>
            </div>
        </div>

    </div>

    <script src="js/peticiones.js"></script>
</body>


</html>