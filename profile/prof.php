<?php
session_start();
if (!$_SESSION['user']) {
    header('Location: ../index.php');
}
?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Профиль</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="http://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">

</head>
<body>
	<header>
			  <a href=" ../vendor/logout.php">
			<img id="logout-logo" src="img/logout.png">
			  </a>
		</nav>
	</header>
	<div id="background-square">
		<div id="top-panel">
			<div id="top-panel-name"> <?= $_SESSION['user']['Full_name'] ?> </div>
			</div>
		</div>
	</div>


</body>
</html>
