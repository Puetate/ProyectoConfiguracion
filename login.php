<?php
$link= mysqli_connect('localhost','root','');
if(!$link)
{
echo "No se pudo conectar con el servidor";
}
else
{
$db="bd_for_grup";
$sdb=mysqli_select_db($link,$db);
if(!$sdb)
{
echo "No se pudo encotrar la base de datos";
}
else
{
$user=$_POST["user"];
$pass=$_POST["userpassword"];
$search="SELECT NIC_USU,CON_USU  FROM usuario";
$busqueda=mysqli_query($link,$search);
$finduser=FALSE;
while ($row = mysqli_fetch_assoc($busqueda)) {
    if(($row["NIC_USU"]==$user)and(password_verify($pass,$row["CON_USU"])))
    {
        $finduser=TRUE; 
    }
}
if($finduser)
{
echo "Usuario encontrado";
}
else
{
echo "No se encontro el usuario"; 
}
/* liberar el conjunto de resultados */
mysqli_free_result($busqueda);
}
}
?>