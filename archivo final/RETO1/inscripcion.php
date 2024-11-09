
<html>
<body>

<?php
    $nombre=$_GET['nombre'];
    $apellido=$_GET['apellido'];
    $telefono=$_GET['telefono'];
    $email=$_GET['email'];
    $evento=$_GET['eventos'];
    $lunes=0;
    $martes=0;
    $miercoles=0;
    $jueves=0;

    foreach ($evento as $x) {
    
      if($x == 1) {$lunes=1;};
      if($x == 2){$martes=1;};
      if($x == 3){$miercoles=1;};
      if($x == 4){$jueves=1;};
    }
?>   

 
<?php
$servidor = "localhost";
$usuario = "root";
$password = "";
$basedatos = "registro_de_apuntados";

// Crear conexión
$conn = new mysqli($servidor, $usuario, $password, $basedatos);
// Checkear conexión
if ($conn->connect_error) {
  die("Conexión fallida: " . $conn->connect_error);
}

$sql = "INSERT INTO apuntados (Nombre, Apellido, Telefono, Email, evento_Lunes, evento_Martes, evento_Miercoles, evento_Jueves)
VALUES ('$nombre', '$apellido', '$telefono', '$email', $lunes, $martes, $miercoles, $jueves)";

if ($conn->query($sql) === TRUE) {
  echo "Dado de alta satisfactoriamente";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

// Cerrar conexión
$conn->close();
?>

</body>
</html>