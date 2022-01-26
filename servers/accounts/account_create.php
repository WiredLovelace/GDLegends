<?php

include "../inc/db.php";

include "../utils/db_field_exists.php";

if ($_POST["submit"])
{
    $username = $_POST ["username"];
    $email    = $_POST ["email"];
    $password = $_POST ["password"];

    // TODO: Check for passed variables length
    if (strlen ($email) > 255)
    {
        echo "Emails cannot be longer#than 255 characters.";
        exit;
    }

    if (strlen ($username) > 32)
    {
        echo "Usernames cannot be longer#than 32 characters.";
        exit;
    }
    if (strlen ($password) > 72)
    {
        echo "Passwords cannot be longer#than 72 characters.";
    }

    if (empty ($username) || empty ($email) || empty ($password))
    {
        echo "All the fields must be filled.";
        exit;
    }

    if (db_field_exists ($conn, "users", "name", "s", $username))
    {
        echo "This username is already taken.";
        exit;
    }

    if (db_field_exists ($conn, "users", "email", "s", $email))
    {
        echo "This email already exists.";
        exit;
    }

    $final_pass = password_hash ($password, PASSWORD_BCRYPT);
    if (!account_create ($conn, $username, $email, $final_pass))
    {
        echo "There's been an error creating#an account.";
    }

    echo "#" . session_id ();
    $_SESSION["loggedin"] = "1";
    $_SESSION["uname"] = $username;
    exit;
}

function
    account_create ($conn, $uname, $email, $pass_hash)
{
    $success = 0;

    $stmt = $conn->prepare ("INSERT INTO users(email,name,password) VALUES(?,?,?)");
    $stmt->bind_param ("sss", $email, $uname, $pass_hash);

    $success = $stmt->execute ();

    $stmt->close ();

    return $success;
}

?>
