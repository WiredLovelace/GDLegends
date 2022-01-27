<?php

include "../inc/db.php";

if (!isset ($_SESSION ["loggedin"]))
{
    echo "Please log-in to sync your data.";
    exit;
}

$level = empty ($_POST ["level"]) ? 0 : $_POST ["level"];
$exp   = empty ($_POST ["exp"]) ? 0 : $_POST ["exp"];
$stars = empty ($_POST ["stars"]) ? 0 : $_POST ["stars"];
$coins = empty ($_POST ["stars"]) ? 0 : $_POST ["coins"];
$gems = empty ($_POST ["stars"]) ? 0 : $_POST ["gems"];
$current_level = empty ($_POST ["current_level"]) ? 0 : $_POST ["current_level"];
$cube  = empty ($_POST ["cube"]) ? 0 : $_POST ["cube"];
$ship  = empty ($_POST ["ship"]) ? 0 : $_POST ["ship"];
$ball  = empty ($_POST ["ball"]) ? 0 : $_POST ["ball"];
$ufo   = empty ($_POST ["ufo"]) ? 0 : $_POST ["ufo"];
$wave  = empty ($_POST ["wave"]) ? 0 : $_POST ["wave"];
$robot = empty ($_POST ["robot"]) ? 0 : $_POST ["robot"];
$spider = empty ($_POST ["spider"]) ? 0 : $_POST ["spider"];
$col1  = empty ($_POST ["col1"]) ? 0 : $_POST ["col1"];
$col2  = empty ($_POST ["col2"]) ? 0 : $_POST ["col2"];

$stmt = $conn->prepare ("UPDATE users SET level=?,experience=?,stars=?,coins=?,gems=?,current_level=?,cube=?,ship=?,ball=?,ufo=?,wave=?,robot=?,spider=?,col1=?,col2=? WHERE name=?");
$stmt->bind_param ("iiiiiiiiiiiiiiis", $level, $exp, $stars, $coins,
                   $gems, $current_level, $cube, $ship, $ball, $ufo, $wave,
                   $robot, $spider, $col1, $col2, $_SESSION ["uname"]);
if ($stmt->execute ())
{
    echo "0";
    $stmt->close ();
    exit;
}

echo "There's been an error syncing#your data#" . $stmt->error;
$stmt->close ();

?>
