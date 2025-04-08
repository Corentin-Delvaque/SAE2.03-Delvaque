<?php

define("HOST", "localhost");
define("DBNAME", "delvaque1");
define("DBLOGIN", "delvaque1");
define("DBPWD", "delvaque1");

function getMovies() {
    try {
        $cnx = new PDO("mysql:host=" . HOST . ";dbname=" . DBNAME, DBLOGIN, DBPWD);
        $sql = "SELECT * FROM Movie";
        $stmt = $cnx->prepare($sql);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_OBJ);
        return $res;
    } catch (Exception $e) {
        return false;
    }
}

function getMoviesFiltered($id_category, $name, $image) {
    try {
        $cnx = new PDO("mysql:host=" . HOST . ";dbname=" . DBNAME, DBLOGIN, DBPWD);
        $sql = "SELECT * FROM Movie WHERE id_category = :id_category AND name LIKE :name AND image LIKE :image";
        $stmt = $cnx->prepare($sql);
        $stmt->bindParam(':id_category', $id_category);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':image', $image);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_OBJ);
        return $res;
    } catch (Exception $e) {
        return false;
    }
}

function addMovie($name, $year, $length, $description, $director, $id_category, $image, $trailer, $min_age) {
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    $sql = 'INSERT INTO Movie(name, year, length, description, director, id_category, image, trailer, min_age) VALUES(:name, :year, :length, :description, :director, :id_category, :image, :trailer, :min_age)';
    $stmt = $cnx->prepare($sql);
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':year', $year);
    $stmt->bindParam(':length', $length);
    $stmt->bindParam(':description', $description);
    $stmt->bindParam(':director', $director);
    $stmt->bindParam(':id_category', $id_category);
    $stmt->bindParam(':image', $image);
    $stmt->bindParam(':trailer', $trailer);
    $stmt->bindParam(':min_age', $min_age);
  
    $stmt->execute();
     $res = $stmt->rowCount(); 
     var_dump($res);
    return $res; 
}