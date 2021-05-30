<?php require 'handler.php'; ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Гостевая книга</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <form class="search" action="" method="post">
      <label>поиск по "user name"</label>
      <input type="text" name="search_name" value="">
      <label>поиск по "e-mail"</label>
      <input type="text" name="search_email" value="">
      <label>дата</label>
      <select class="" name="search_date">
        <option value="0"></option>
        <option value="2">по убыванию</option>
        <option value="1">по возрастанию</option>
      </select>

      <input type="submit" name="search_submit" value="Искать" class="searchSubmit">
    </form>

    <hr>

    <table  class="table">
      <tr style="border:1px solid grey;" cellspacing="1" >
        <th style="width: 20%">User name</th>
        <th style="width: 20%">e-mail</th>
        <th style="width: 20%">date</th>
        <th style="width: 40%">message</th>
      </tr>
      <?php foreach ($result as $key => $value) : ?>
        
      <tr>
        <td><?= $value['name']; ?></td>
        <td><?= $value['email']; ?></td>
        <td><?= $value['date']; ?></td>
        <td><?= $value['message']; ?></td>
      </tr>

      <?php endforeach; ?>
    </table>
    <br>

    <ul class="pagination" style="">
      <?php for ($i = 1; $i <= $count_pages; $i++) : ?>
        <?php $class = ($cur_page == $i) ? ' active' : ''; ?>
        <li class="<?= $class; ?>"><a href="?page=<?= $i; ?>"><?= $i; ?></a></li>
      <?php endfor; ?>

    </ul>
 <hr>
    <a href="index.php" class="back"><label>&#8617;</label> назад</a>
  </body>
</html>
