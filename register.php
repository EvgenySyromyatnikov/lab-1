<?php
 session_start();

 if (isset($_SESSION['user'])) {
     header('Location: profile/prof.php');
 }

?>

<!DOCTYPE html>
<html lang="ru" >
<head>
	<title>Регистрация</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="http://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
</head>
<body>

	<div id="fixed-container">
		<div id="form">
			<h1>Регистрация</h1>
			<form method="post" action="vendor/signup.php" enctype="multipart/form-data">
				<label class="form-label">Email</label>
				<input class="normal-input" name="Email"  type="email" required size="40" placeholder="Введите Email...">
				<label class="form-label">ФИО</label>
				<input class="normal-input" name="full_name" type="text" required size="40" placeholder="Введите ФИО...">
				<label class="form-label">Пароль</label>
				<input class="normal-input" name="password" type="password" required size="40" placeholder="Введите пароль...">
				<label class="form-label">Пароль</label>
				<input class="normal-input" name="confirm_password" type="password" required size="40" placeholder="Подтвердите пароль...">
                <button type="submit" class="reg-complete">Зарегистрироваться</button>
								<p>
           У вас уже есть аккаунт? -<a href="/index.php">авторизируйтесь</a>
           </p>
           <?php
                     if (isset($_SESSION['message'])) {
                         echo '<p class="msg" style="	border: 2px solid #ffa908;
                           border-radius: 3px; text-align:center; font-weight:bold; color:black;"> ' . $_SESSION['message'] . ' </p>';
                     }
                     unset($_SESSION['message']);
                      ?>

			</form>
		</div>
	</div>

</body>
</html>
