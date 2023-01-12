<?php
 session_start();
 if (isset($_SESSION['user'])) {
     header('Location: profile/prof.php');
 }
?>


<!doctype html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <title>Авторизация</title>
     <link rel="stylesheet" type="text/css" href="style.css">
     <link href="http://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
 </head>
 <body>
    
     <!-- Форма авторизации -->
     <div id="fixed-container">
		<div id="form">
			<h1>Авторизация</h1>
			<form action="vendor/signin.php" method="post">
				<label class="form-label">Email</label>
				<input class="normal-input" name="Email" type="email" required size="40" placeholder="Введите Email...">
				<label class="form-label">Пароль</label>
				<input class="normal-input" name="password" type="password" required size="40" placeholder="Введите пароль...">

                <button type="submit" class="reg-complete">Авторизоваться</button>
                <p>
           У вас нет аккаунта? -<a href="/register.php">зарегистрируйтесь</a>

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
