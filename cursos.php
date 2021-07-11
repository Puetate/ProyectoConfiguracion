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
$search="SELECT c.NOM_CUR,u.NOM_USU FROM curso c,usuario u WHERE c.COD_USU_CRE = u.COD_USU";
$busqueda=mysqli_query($link,$search);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">

</head>

<body>


    <!--NavbarSuperior-->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><img class="logo-brand" src="assets/images/Screenshot_6.png"
                    alt="logo"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="#">Mi perfil</a></li>
                    <li class="nav-item"><a class="nav-link" href="index.html">Cerrar sesión</a></li>
                </ul>
            </div>
        </div>
    </nav>


    <div class="container-fluid" style="padding-top: 100px;">
        <div class="row">
            <!--NavbarIzquierda-->
            <div class="col-2  border border-3 border-dark text-center" style="padding-bottom: 11%; background-color: #90B3EF;">
                <h3 class="nav-foro fw-bold">PUBLICACIONES</h3>
                <ul class="nav flex-column ">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Importantes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Académicas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Otros</a>
                    </li>
                    <h3 class="nav-foro fw-bold">CURSOS</h3>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Inscritos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Mis Cursos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Ver Cursos</a>
                    </li>
                </ul>
            </div>
            <!--ForoPublicaciones-->
            <div class="col-10">
                <table class="table">
                    <thead class="thead-dark">
                        <th>Curso</th>
                        <th>Docente</th>
                        <th>Costo</th>
                    </thead>
                    <tbody>
                        <?php
                        while ($row = mysqli_fetch_assoc($busqueda)) {?>
                        <tr>
                            <td><a href="index.html">
                                    <?php echo $row['NOM_CUR']; ?>
                                </a></td>
                            <a href="index.html">
                                <td>
                                    <?php echo $row['NOM_USU']; ?>
                                </td>
                            </a>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>
        </div>

    </div>








    <script src="js/bootstrap.min.js"></script>
</body>

</html>