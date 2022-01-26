<?php

if (isset ($_POST ["sid"]) && !empty ($_POST ["sid"]))
{
    session_id ($_POST ["sid"]);
}

session_start ();
$conn = mysqli_connect ("localhost", "legends", "legends", "legends");

if (!$conn)
{
  die ("There's been an error connecting to the database.");
}

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

?>
