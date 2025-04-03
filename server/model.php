<?php

define("HOST", "localhost");
define("DBNAME", "delvaque1");
define("DBLOGIN", "delvaque1");
define("DBPWD", "delvaque1");

function getMovies() {
    try {
        $cnx = new PDO("mysql:host=" . HOST . ";dbname=" . DBNAME, DBLOGIN, DBPWD);
        $sql = "SELECT name, image FROM Movie";
        $stmt = $cnx->prepare($sql);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_OBJ);
        return $res;
    } catch (Exception $e) {
        return false;
    }
}