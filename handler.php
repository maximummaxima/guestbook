<?php
require 'db_connect.php';

//проверяем данные, введеные юзером в форму
$name = preg_match("/^[A-Za-z0-9]+$/", $_POST['name']);
if ($name == 1) {
  $name = trim(strip_tags($_POST['name']));
} else {
  $name = "";
}

$email = preg_match("/^([A-Za-z0-9_-]+\.)*[A-Za-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$/", $_POST['email']);
if ($email == 1) {
  $email = trim(strip_tags($_POST['email']));
} else {
  $email = "";
}

$homepage = preg_match("/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?$/", $_POST['homepage']);
if ($homepage == 1) {
  $homepage = trim(strip_tags($_POST['homepage']));
} elseif ($homepage == 0) {
  $homepage = "";
}

$captcha = mb_strtolower(trim(strip_tags($_POST['captcha'])));
$message = trim(strip_tags($_POST['message']));


//выдаем ошибку если поле не заполнено
if (isset($_POST['submit']) and empty($_POST['name'])) {
  $err_name = "<b style='color: red'>заполните поле!</b>";
}
if (isset($_POST['submit']) and empty($_POST['email'])) {
  $err_email = "<b style='color: red'>заполните поле!</b>";
}
if (isset($_POST['submit']) and empty($_POST['captcha'])) {
  $err_captcha = "<b style='color: red'>заполните поле!</b>";
}
if (isset($_POST['submit']) and empty($_POST['message'])) {
  $err_message = "<b style='color: red'>заполните поле!</b>";
}

$search_name = trim(strip_tags($_POST['search_name']));
$search_email = trim(strip_tags($_POST['search_email']));
$search_date = $_POST['search_date'];



//IP пользователя
$client  = $_SERVER['HTTP_CLIENT_IP'];
$forward = $_SERVER['HTTP_X_FORWARDED_FOR'];
$remote  = $_SERVER['REMOTE_ADDR'];
if (filter_var($client, FILTER_VALIDATE_IP)) {
  $ip = $client;
} elseif (filter_var($forward, FILTER_VALIDATE_IP)) {
  $ip = $forward;
} else {
  $ip = $remote;
}


//Браузер пользователя
$user_agent = $_SERVER["HTTP_USER_AGENT"];
  if (strpos($user_agent, "Firefox") !== false) {
  $browser = "Firefox";
  } elseif (strpos($user_agent, "Opera") !== false) {
  $browser = "Opera";
  } elseif (strpos($user_agent, "Chrome") !== false) {
  $browser = "Chrome";
  } elseif (strpos($user_agent, "MSIE") !== false) {
  $browser = "Internet Explorer";
  } elseif (strpos($user_agent, "Safari") !== false) {
  $browser = "Safari";
  } else {
  $browser = "Неизвестный";
  }

//Дата добавления сообщения
$date = date("d-m-Y");

//количество записаей в бд
$stmt = $pdo->prepare("SELECT count(*) FROM `feedback`");
$stmt->execute();
$count_sql = $stmt->fetchColumn();


//пагинация
if (isset($_GET['page'])) {
  $cur_page = $_GET['page'];
} else {
  $cur_page = 1;
}
$count_on_page = 25;
$from = ($cur_page - 1) * $count_on_page;
$count_pages = ceil($count_sql / $count_on_page);


//капча
$random = rand(1, 5);
$arr = [
  "1" => "енот",
  "2" => "белка",
  "3" => "лев",
  "4" => "кот",
  "5" => "собака"
];



//добавляем запись в бд
if (isset($_POST['submit']) and $captcha == $_POST['hiddenInput'] and (isset($name) and !empty($name)) and (isset($email) and !empty($email)) and (isset($message) and !empty($message))) {
  $stmt = $pdo->prepare("INSERT INTO `feedback` SET `name` = ?, `email` =   ?, `homepage` = ?, `message` = ?, `date` = ?, `ip` = ?, `browser` = ?");
  $stmt->execute([$name, $email, $homepage, $message, $date, $ip,   $browser]);
  $show_res = '<div class="show_res"><b style="color: green">Сообщение отправлено &#10004;</b></div><br>';
  header('Refresh: 2');
} elseif (isset($_POST['submit']) and (($captcha !== $_POST['hiddenInput']) or empty($name) or empty($email) or empty($message))) {
  $show_res = '<div class="show_res"><b style="color: red">Сообщение не отправлено &#10008;</b></div><br>';
  header('Refresh: 2');
}



$stmt = $pdo->prepare("SELECT `name`, `email`, `date`, `message` FROM `feedback` ORDER BY `id` DESC LIMIT $from, $count_on_page");
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);





//сортировка по дате
if (isset($_POST['search_submit']) and isset($_POST['search_date']) and $_POST['search_date'] == 2) {
  $result = search_date('DESC', $from, $count_on_page);
}

if (isset($_POST['search_submit']) and isset($_POST['search_date']) and $_POST['search_date'] == 1) {
  $result = search_date('ASC', $from, $count_on_page);
}

function search_date($val, $from, $count_on_page) {
  global $pdo;
  $stmt = $pdo->prepare("SELECT `name`, `email`, `date`, `message` FROM `feedback` ORDER BY `id` {$val} LIMIT {$from}, {$count_on_page}");
  $stmt->execute();
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
  return $result;
}





//сортировка по имени и дате
if (isset($_POST['search_submit']) and ($search_name != "") and ($_POST['search_email'] == "")) {
  $res = search($search_name, 'name', $from, $count_on_page);
  $result = $res[0];
  $count_pages = $res[1];
}

if (isset($_POST['search_submit']) and ($search_email != "") and ($_POST['search_name'] == "")) {
  $res = search($search_email, 'email', $from, $count_on_page);
  $result = $res[0];
  $count_pages = $res[1];
}

function search($search_var, $val, $from, $count_on_page) {
  global $pdo;
  $stmt = $pdo->prepare("SELECT `name`, `email`, `date`, `message` FROM `feedback` WHERE `$val` = ? LIMIT {$from}, {$count_on_page}");
  $stmt->execute([$search_var]);
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
  $stmt = $pdo->prepare("SELECT count(*) FROM `feedback` WHERE `$val` = ? LIMIT $from, $count_on_page");
  $stmt->execute([$search_var]);
  $count_sql = $stmt->fetchColumn();
  $count_pages = ceil($count_sql / $count_on_page);
  return [$result, $count_pages];
}



if (isset($_POST['search_submit']) and $_POST['search_name'] == "" and $_POST['search_email'] == "" and $_POST['search_date'] == 0) {
  header('Location: table.php?page=1');
}
?>
