<?php
$servername = "mysql-connection";
$username = getenv("DB_USER");
$password = getenv("DB_PASS");
$database = getenv("DATABASE");

// Criar conexão


$link = new mysqli($servername, $username, $password, $database);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

?>
