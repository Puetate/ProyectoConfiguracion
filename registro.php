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
//*********En caso de que ponga un confirmar contraseña******* */
//$rpass = $_POST['rpass'];
//se confirma la contraseña
/*if ($pass != $rpass) {
	
}*/
//*************************************************************** */
//se encripta la contraseña
$encryptedpass = password_hash($pass,PASSWORD_DEFAULT);
//Se realiza la sentencia sql
$insert="INSERT INTO usuario
(COD_USU, NOM_USU, APE_USU,COR_USU,TEL_USU,NIC_USU,CON_USU,ADM_USU) VALUES('','$name','$surname','$email','$phone','$user','$encryptedpass',1)";
//Se ingresa la información a la base de datos
mysqli_query($connect,$insert);
//Se desconecta de la base de datos
mysqli_close($connect);
		}
echo'<script>alert("Registro Exitoso");location.href="index.html";</script>';
?>