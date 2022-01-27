<?php

include "../inc/db.php";

if (!isset ($_SESSION ["loggedin"]))
{
    echo "Please log-in to retrieve your data";
    exit;
}

$stmt = $conn->prepare ("SELECT * FROM users WHERE name=?");
$stmt->bind_param ("s", $_SESSION ["uname"]);

if (!$stmt->execute ())
{
    echo "There's been an error retrieving#your data";
    exit;
}

$result = $stmt->get_result ();
$data = $result->fetch_array (MYSQLI_ASSOC);

echo $data ["level"] . "\n" .
    $data ["experience"] . "\n" .
    $data ["stars"] . "\n" .
    $data ["coins"] . "\n" .
    $data ["gems"] . "\n" .
    $data ["current_level"] . "\n" .
    $data ["cube"] . "\n" .
    $data ["ship"] . "\n" .
    $data ["ball"] . "\n" .
    $data ["ufo"] . "\n" .
    $data ["wave"] . "\n" .
    $data ["robot"] . "\n" .
    $data ["spider"] . "\n" .
    $data ["col1"] . "\n" .
    $data ["col2"] . "\n";

$stmt->close ();

?>
