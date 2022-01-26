<?php

include "../inc/db.php";
echo isset ($_SESSION ["loggedin"]) ? $_SESSION ["uname"] : "0";

?>
