<?php require 'handler.php'; ?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Гостевая книга</title>
    <link rel="stylesheet" href="style.css">
    <style media="screen">


    </style>
  </head>
  <body>

    <form action="" class="sendMessageForm" method="post">
      <h1>Оставте свое сообщение</h1>
      <p>
        <label>User name <?=$err_name?></label>
        <br>
        <input type="text" name="name" value="" title="цифры и буквы латинского алфавита">
        <span style="color:grey">Обязательное поле</span>
      </p>
      <p>
        <label>E-mail <?=$err_email?></label>
        <br>
        <input type="text" name="email" value="" title="формат email" class="<?=$err?>">
        <span style="color:grey">Обязательное поле</span>
      </p>
      <p>
        <label>Homepage</label>
        <br>
        <input type="url" name="homepage" value="" title="формат URL" placeholder="http://page.ru/">
      </p>
      <p>
        <div class="captcha">
          <label>укажите, что изображено на картинке</label>
            <?php foreach ($arr as $number => $animal) : ?>
              <?php if ($random == $number) : ?>
                <img src="pic/<?=$number;?>.jpg" alt="">
                <?=$err_captcha?>
                <input type="hidden" name="hiddenInput" value="<?=$animal;?>">
              <?php endif; ?>
            <?php endforeach; ?>
          <input type="text" name="captcha" value="" title="только кириллица" class="<?=$err?>">
          <span style="color:grey">Обязательное поле</span>
        </div>
        <br>

      </p>
      <p>
        <label>Сообщение <?=$err_message?></label>
        <br>
        <textarea name="message" rows="10" title="ваш текст" class="<?=$err?>"></textarea>
      </p>
      <input class="submitMess" type="submit" name="submit" value="Отправить">
      <?php echo $show_res; ?>
    </form>
    <br>
    <a href="table.php" class="link">перейти к сообщениям <label>&#10149;</label></a>

  </body>
</html>









<!-- <input type="text" name="name" value="" title="цифры и буквы латинского алфавита" required pattern="^[A-Za-z0-9]+$"> -->



<!-- <input type="text" name="email" value="" required title="формат email" pattern="^([A-Za-z0-9_-]+\.)*[A-Za-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$"> -->
