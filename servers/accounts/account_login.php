<?php

include "../inc/db.php";

include "../utils/db_field_exists.php";

if ($_POST["submit"])
{
    $username = $_POST["username"];
    $password = $_POST["password"];

    if (empty ($username) || empty ($password))
    {
        echo "All the fields must be filled.";
        exit;
    }

    if (!db_field_exists ($conn, "users", "name", "s", $username))
    {
        echo "The entered username doesn't exist.";
        exit;
    }

    $hash = account_get_passhash ($conn, $username);

    if (!password_verify ($password, $hash))
    {
        echo "The password is wrong.";
        exit;
    }

    $_SESSION["loggedin"] = "1";
    $_SESSION["uname"] = $username;

    echo "#" . session_id ();
    //echo "0";
}

function
    account_get_passhash ($conn, $name)
{
    $hash = "";

    $stmt = $conn->prepare ("SELECT password FROM users WHERE name=? LIMIT 1");
    $stmt->bind_param ("s", $name);
    $stmt->execute ();
    $stmt->bind_result ($hash);
    $stmt->fetch ();

    return $hash;
}

?>
