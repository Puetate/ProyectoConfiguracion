<?php
	//conexion con la base de datos y el servidor
	$connect = mysqli_connect("localhost","root","");

	if(!$connect) 
        {
            echo "No se ha podido conectar con el servidor" ;
        }
  else 
 		{

	$db = "bd_for_grup";
	$sdb = mysqli_select_db($connect,$db); 
		}

if(!$sdb)
		{
	echo "No se encontro la base de datos" ;
		}				
else
		{
//obtenemos los valores del formulario
$name = $_POST['username'];
$surname = $_POST['usersurname'];
$phone= $_POST['phone'];
$user= $_POST['user'];
$email = $_POST['useremail'];
$pass = $_POST['userpassword'];

//$rpass = $_POST['rpass'];

//Obtiene la longitus de un string

//se confirma la contraseña
/*if ($pass != $rpass) {
	die('Las contraseñas no coinciden, Verifique <br /> <a href="index.html">Volver</a>');
}*/

//se encripta la contraseña
//$contraseñaUser = md5($pass);
//ingresamos la informacion a la base de datos
$insert="INSERT INTO usuario
(COD_USU, NOM_USU, APE_USU,COR_USU,TEL_USU,NIC_USU,CON_USU,ADM_USU) VALUES('','$name','$surname','$email','$phone','$user','$pass',NULL)";

mysqli_query($connect,$insert);

mysqli_close($connect);
		}
echo'<script>alert("Registro Exitoso");location.href="index.html";</script>';
?>