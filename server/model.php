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

function getProfils() {
    try {
        $cnx = new PDO("mysql:host=" . HOST . ";dbname=" . DBNAME, DBLOGIN, DBPWD);
        $sql = "SELECT * FROM UserProfil";
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
    return $stmt->rowCount();
}

function addProfil($name, $avatar, $age_restriction) {
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    $sql = 'INSERT INTO UserProfil(name, avatar, age_restriction) VALUES(:name, :avatar, :age_restriction)';
    $stmt = $cnx->prepare($sql);
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':avatar', $avatar);
    $stmt->bindParam(':age_restriction', $age_restriction);
  
    $stmt->execute();
    return $stmt->rowCount();
}

function modProfil($id, $name, $avatar, $age_restriction) {
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    $sql = 'UPDATE UserProfil SET name = :name, avatar = :avatar, age_restriction = :age_restriction WHERE id = :id';
    $stmt = $cnx->prepare($sql);
    $stmt->bindParam(':id', $id);
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':avatar', $avatar);
    $stmt->bindParam(':age_restriction', $age_restriction);
  
    $stmt->execute();
    return $stmt->rowCount();
}