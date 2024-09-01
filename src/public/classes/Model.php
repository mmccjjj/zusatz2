<?php
class Model
{
    protected PDO $dbConnection;

    function __construct()
    {
        $db_host = getenv("DB_HOST");
        $db_name = getenv("DB_NAME");
        $db_user = getenv("DB_USER");
        $db_pass = getenv("DB_PASSWORD");

        try {
            $this->dbConnection = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
            $this->dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    function all($data)
    {
        $query = "SELECT * FROM $data";
        $stmt = $this->dbConnection->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
