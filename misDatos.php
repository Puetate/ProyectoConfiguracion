<?php
$link= mysqli_connect('localhost','root','');
if(!$link)
{
echo "No se pudo conectar al servidor";
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
echo "hola mundo";
$sql = "SELECT ";
}

}
?>