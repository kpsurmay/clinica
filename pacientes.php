<?php
require('conection.php');
?>

<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Clinica</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>

<div class="container">


  <div class="card mt-5">
    <div class="card-header">
      <h4 class="float-left">Pacientes</h4>
      <div class="float-right">
        <a href="registrar.php" class="btn btn-success">Registrar</a>
      </div>
    </div>
    <div class="card-body">
      <table class="table table-striped">

      <?php
      $sql = "select * from date_person";
      $conexion = conectar();
      if ($result = mysqli_query ($conexion, $sql)) {
        if (mysqli_num_rows ($result)>0) {
           while ($row = mysqli_fetch_array($result)) {
              echo "<tr>";
              echo "<td>".$row['id_tipe_doc']."</td>";
              echo "<td>".$row['id_date_person']."</td>";
              echo "<td><a href='show.php?id='".$row['id_date_person']."''>".$row['f_name']." ".$row['s_name']." ".$row['l_name']." ".$row['l_name_s']."</a></td>";
              echo "<td>".$row['date']."</td>";
              echo "<td><a href='editar.php?id=".$row['id_date_person']."' class='btn btn-primary'>Editar</a>";
              echo "<a href='eliminar.php?id=".$row['id_date_person']."' class='btn btn-danger'>Eliminar</a></td>";
              echo "</tr>";
           }
         }
       }
      ?>
    </table>
  </div>

</div>
</body>
</html>
