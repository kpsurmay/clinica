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
      <h4 class="float-left">Registrar Paciente</h4>
			<div class="float-right">
        <a href="pacientes.php" class="btn btn-success">Listado</a>
      </div>
    </div>
    <div class="card-body">

    				 <?php
     				 $sql = "select * from date_person";
      				 $conexion = conectar();
        			 if ($result = mysqli_query ($conexion, $sql)) {
        		 	 if (mysqli_num_rows ($result)>0) {
           			 $row = mysqli_fetch_array($result)
           			 ?>






			<form method="POST">

				<div class="form-row">
		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="tipo_documento">Tipo documento</label>
		        <select id="tipo_documento" name="id_type_doc" class="form-control form-control-sm">
		          <?php
							$query50="SELECT * from type_doc";
							$pers = getArraySQL($query50);
								foreach ($pers as $per) {
									echo '<option value="'.$per['id_type_doc'].'">'.$per['type_doc']. '</option>';
								}
		          ?>
		        </select>
		      </div>

		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="documento">Documento</label>
		        <input type="text" class="form-control" name="id_date_person" value="" id="documento" autocomplete="off">
		      </div>
		    </div>

				<div class="form-row">
		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="nombre1">Primer nombre</label>
		        <input type="text" class="form-control" name="f_name" value="" autocomplete="off">
		      </div>

		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="nombre2">Segundo nombre</label>
		        <input type="text" class="form-control" name="s_name" value="" autocomplete="off">
		      </div>
		    </div>

		    <div class="form-row">
		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="apellido1">Primer apellido</label>
		        <input type="text" class="form-control" name="l_name" value="" autocomplete="off">
		      </div>

		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="apellido2">Segundo apellido</label>
		        <input type="text" class="form-control" name="l_name_s" value="" autocomplete="off">
		      </div>
		    </div>

				<div class="form-row">
		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="fecha_nacimiento">Fecha de nacimiento</label>
		        <input type="date" class="form-control" name="date" value="" autocomplete="off">
		      </div>

		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="nacionalidad">Foto</label>
						<input id="photo" name="photo" class="form-control input-md" type="file">
					</div>
				</div>


				<div class="form-row">
		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="apellido1">Tipo de Sangre</label>
						<select id="tipo_sangre" name="id_blood_type" class="form-control form-control-sm">
		          <?php
							$query50="SELECT * FROM blood_type";
							$pers = getArraySQL($query50);
								foreach ($pers as $per) {
									echo '<option value="'.$per['id_blood_type'].'">'.$per['blood_type']. '</option>';
								}
		          ?>
		        </select>
		      </div>

		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="rh">RH</label>
						<select id="rh" name="id_rh" class="form-control form-control-sm">
		          <?php
							$query50="SELECT * FROM rh";
							$pers = getArraySQL($query50);
								foreach ($pers as $per) {
									echo '<option value="'.$per['id_rh'].'">'.$per['rh'].'</option>';
								}
		          ?>
		        </select>
		      </div>
		    </div>

				<div class="form-row">
		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="ecivil">Estado civil</label>
						<select id="ecivil" name="id_matrial_status" class="form-control form-control-sm">
		          <?php
							$query50="SELECT * FROM matrial_status";
							$pers = getArraySQL($query50);
								foreach ($pers as $per) {
									echo '<option value="'.$per['id_matrial_status'].'">'.$per['matrial_status']. '</option>';
								}
		          ?>
		        </select>
		      </div>

		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="ciudad">Ciudad de Nacimiento</label>
						<select id="city" name="id_city_born" class="form-control form-control-sm">
		          <?php
							$query50="SELECT * FROM city_born";
							$pers = getArraySQL($query50);
								foreach ($pers as $per) {
									echo '<option value="'.$per['id_city_born'].'">'.$per['city_born'].'</option>';
								}
		          ?>
		        </select>
		      </div>
		    </div>



				<div class="form-row">
		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="genero">Genero</label>
						<select id="genero" name="id_gender" class="form-control form-control-sm">
		          <?php
							$query50="SELECT * FROM gender";
							$pers = getArraySQL($query50);
								foreach ($pers as $per) {
									echo '<option value="'.$per['id_gender'].'">'.$per['gender']. '</option>';
								}
		          ?>
		        </select>
		      </div>

		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="race">Raza</label>
						<select id="race" name="id_race" class="form-control form-control-sm">
		          <?php
							$query50="SELECT * FROM race";
							$pers = getArraySQL($query50);
								foreach ($pers as $per) {
									echo '<option value="'.$per['id_race'].'">'.$per['race'].'</option>';
								}
		          ?>
		        </select>
		      </div>
		    </div>

				<div class="form-row">
		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="eps">EPS</label>
						<select id="eps" name="id_eps" class="form-control form-control-sm">
		          <?php
							$query50="SELECT * FROM eps";
							$pers = getArraySQL($query50);
								foreach ($pers as $per) {
									echo '<option value="'.$per['id_eps'].'">'.$per['eps']. '</option>';
								}
		          ?>
		        </select>
		      </div>

		      <div class="form-group col-md-6">
		        <label class="col-form-label-sm" for="rh">Estrato</label>
						<select id="score" name="id_score" class="form-control form-control-sm">
		          <?php
							$query50="SELECT * FROM score";
							$pers = getArraySQL($query50);
								foreach ($pers as $per) {
									echo '<option value="'.$per['id_score'].'">'.$per['score'].'</option>';
								}
		          ?>
		        </select>
		      </div>
		    </div>


<br><input type="submit" name="aceptar" value="ACEPTAR" >

</form>

</div>
</body>
</html>
