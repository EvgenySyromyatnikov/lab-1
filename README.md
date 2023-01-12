# Лабораторная работа 1
_____
## Задание
Спроектировать и разработать систему авторизации пользователей на протоколе HTTP

## Ход работы
### Разработаем пользовательский интерфейс и опишем пользовательские сценарии работы

![](https://raw.githubusercontent.com/EvgenySyromyatnikov/lab-1/main/2023-01-12_18-26-16.png)

Первоначально пользователь попадает на страницу авторизации (index.php). Затем, если переменная $_SESSION['user'] существует (т.е. пользователь уже был авторизован и не выполнил выход из учетной записи), то пользователь перенаправляется на страницу профиля(prof.php). Если же переменной $_SESSION['user'] не существует, но аккаунт уже зарегистрирован, то пользователю предлагается ввести Email и пароль и выполнить авторизацию.  В случае корректного ввода он перенаправляется на  страницу  профиля (prof.php) при этом создается переменная $_SESSION['user'] . Если же пользователь ввел что-то неправильно, то возвращается на эту же страницу, но при этом будет выведено сообщение 'Не верный логин или пароль'. 

Если же изначально пользователь не имеет аккаунта, то он может перейти по ссылке ‘зарегистрируйтесь’ и зарегистрироваться. В данном случае пользователь перенаправляется на страницу регистрации (register.php), где ему необходимо ввести Email, ФИО и пароль два раза и нажать на кнопку ‘Зарегистрироваться’. В случае корректного ввода он перенаправляется на страницу авторизации (index.php) на которой будет выведено сообщение 'Регистрация прошла успешно!' . Если же пользователь ввел что-то неправильно, то возвращается на эту же страницу, но на странице будет выведено сообщение 'Пароли не совпадают'. Если пользователь случайно перешел по ссылке регистрации, то он может нажать на ссылку ‘авторизируйтесь’, которая вернет его обратно на страницу авторизации.

Когда пользователь попадает на страницу профиля (prof.php), то для него доступна иконка с изображение выхода, при нажатии на которую происходит перенаправление на страницу авторизации (index.php) и уничтожение переменной $_SESSION['user'].

### 	Опишем хореографию

![](https://raw.githubusercontent.com/EvgenySyromyatnikov/lab-1/6d3ddeb28f25c7eb342df8dd3a0948cdd9d0913a/2023-01-12_18-27-44.png)


### 	Опишем структуру базы данных

![](https://raw.githubusercontent.com/EvgenySyromyatnikov/lab-1/6d3ddeb28f25c7eb342df8dd3a0948cdd9d0913a/2023-01-12_18-28-39.png)    

### 	Опишем алгоритмы

#### 1.	Регистрируем пользователя 

![](https://raw.githubusercontent.com/EvgenySyromyatnikov/lab-1/6d3ddeb28f25c7eb342df8dd3a0948cdd9d0913a/2023-01-12_18-29-10.png)  

#### 2.	Авторизация 
![](https://raw.githubusercontent.com/EvgenySyromyatnikov/lab-1/6d3ddeb28f25c7eb342df8dd3a0948cdd9d0913a/2023-01-12_18-29-41.png)  

#### 3.	Выход из аккаунта 

![](https://raw.githubusercontent.com/EvgenySyromyatnikov/lab-1/6d3ddeb28f25c7eb342df8dd3a0948cdd9d0913a/2023-01-12_18-30-04.png)

## Вывод

Спроектировали и разработали систему авторизации пользователей на протоколе HTTP

