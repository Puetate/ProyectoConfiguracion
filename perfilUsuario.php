<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="/assets/images/icono_Barra.png">
    <title>Document</title>
</head>
<body>
<nav class="navbar navbar-expand-lg fixed-top">
    <div class="container-fluid">
      <a title="Ir a la página principal UTA help!!" class="navbar-brand" href="index.html"> <img src="assets/images/Screenshot_6.png" class="logo-brand"
          alt="logo"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" id="home" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="acercaDe" href="#">Perfil</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="contactanos" href="#contactos">Mis Cursos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="registrate" href="index.html">Cerrar seción</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <?php
    session_start();
    echo $_SESSION['idUsu'];

  ?>
</body>
</html>