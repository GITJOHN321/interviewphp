<?php
require 'config/conexion.php';
require 'controllers/headquarters.controller.php';

$dataHeadquarters = getheadquarters($conexion)
    ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interview</title>
</head>

<body>
    <form action="" method="post">

        <p>
            <label for="headquarters">Sedes: </label>
            <select name="headquarters" id="headquarters">
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
        <p>
            <label for="sports">Deportes: </label>
            <select name="sports" id="sports">
                <option value="">Seleccionar</option>
            </select>
        </p>
    </form>
    <script src="js/peticiones.js"></script>
</body>


</html>