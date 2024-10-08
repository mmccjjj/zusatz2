<?php


$db_host = getenv("DB_HOST");
$db_name = getenv("DB_NAME");
$db_user = getenv("DB_USER");
$db_pass = getenv("DB_PASSWORD");

try {
    $dbConnection = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
    $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo $e->getMessage();
}


$query = "SELECT id, firstname, lastname, email, phone, mobile, birthdate, linkedin, jobtitle, status FROM contacts";

$stmt = $dbConnection->prepare($query);
$stmt->execute();

$contactData = $stmt->fetchAll(PDO::FETCH_ASSOC);
