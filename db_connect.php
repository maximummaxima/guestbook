<?php
// PDO
try {
  $pdo = new PDO("mysql:host=localhost;dbname=feedback", "root", "root");
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $err) {
  die($err->getMessage());
}


?>
