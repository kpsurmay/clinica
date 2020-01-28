<?php

function conectar(){
  $server    = "localhost";
  $username  = 'root';
  $password  = '';
  $db        = 'clinica';

  $conexion = mysqli_connect($server, $username, $password, $db);
  if(!$conexion){
    die("Problemas de conexion a la base de datos: ".mysqli_connect_error());
  }

  return $conexion;
}

function getArraySQL($sql){
      $conexion = conectar();
      if(!$result = mysqli_query($conexion, $sql)) die(mysqli_error($conexion));
      $rawdata = array();
      $i=0;
      while($row = mysqli_fetch_array($result)){
          $rawdata[$i] = $row;
          $i++;
      }
      mysqli_close($conexion);
      return $rawdata;
  }

  function ejecutar($sql){
  		$conexion = conectar();
      $ejecutar = mysqli_query($conexion,$sql) or die(mysqli_error($conexion));
  		mysqli_close($conexion);
  }
