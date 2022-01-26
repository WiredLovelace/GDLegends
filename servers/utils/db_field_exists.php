<?php

// Checks if there exists a record in certain database with a specified value.
function
    db_field_exists ($conn, $table, $field, $field_type, $value)
{
    $exists = 0;

    // Is it necessary to do safe-checks to these strings? they will be used
    // only by back-end programmers.
    $stmt = $conn->prepare ("SELECT * FROM " . $table . " WHERE " . $field . "=?");
    $stmt->bind_param ($field_type, $value);

    $stmt->execute ();
    $stmt->store_result ();

    $exists = $stmt->num_rows > 0 ? 1 : 0;

    return $exists;
}

?>
