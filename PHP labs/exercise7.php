<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Sweet Cookies</title>
  </head>
  <?php
    $cookie_name = "User";
    $cookie_value = "The user of this PC";
    setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/");
  ?>
  <body>
    <?php
      if(!isset($_COOKIE[$cookie_name])) {
        echo "Cookie '" . $cookie_name . "' is not set!";
      } else {
        echo "The name of the cookie is '" . $cookie_name . "'<br>";
        echo "The cook is: '" . $_COOKIE[$cookie_name] . "'";
      }
  ?>
  </body>
</html>