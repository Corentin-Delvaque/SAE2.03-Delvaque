<?php

define("HOST", "localhost");
define("DBNAME", "delvaque1");
define("DBLOGIN", "delvaque1");
define("DBPWD", "delvaque1");

// Retourne tous les films dont l’âge minimum requis (min_age) est inférieur ou égal à l’âge fourni.
function getMovies($age) {
    try {
        $cnx = new PDO("mysql:host=" . HOST . ";dbname=" . DBNAME, DBLOGIN, DBPWD);
        $sql = "SELECT * FROM Movie WHERE min_age <= :age";
        $stmt = $cnx->prepare($sql);
        $stmt->bindParam(':age', $age, PDO::PARAM_INT);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_OBJ);
        return $res;
    } catch (Exception $e) {
        return false;
    }
}

// Retourne tous les films d'une catégorie spécifique dont l’âge minimum requis (min_age) est inférieur ou égal à l’âge fourni.
function getMoviesFiltered($id_category, $name, $image, $age) {
    try {
        $cnx = new PDO("mysql:host=" . HOST . ";dbname=" . DBNAME, DBLOGIN, DBPWD);
        $sql = "SELECT * FROM Movie WHERE id_category = :id_category AND name LIKE :name AND image LIKE :image AND min_age <= :age";
        $stmt = $cnx->prepare($sql);
        $stmt->bindParam(':id_category', $id_category);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':image', $image);
        $stmt->bindParam(':age', $age, PDO::PARAM_INT);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_OBJ);
        return $res;
    } catch (Exception $e) {
        return false;
    }
}

// Retourne tous les profils d'utilisateur.
function getProfils() {
    try {
        $cnx = new PDO("mysql:host=" . HOST . ";dbname=" . DBNAME, DBLOGIN, DBPWD);
        $sql = "SELECT * FROM Profil";
        $stmt = $cnx->prepare($sql);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_OBJ);
        return $res;
    } catch (Exception $e) {
        return false;
    }
}

// Retourne tous les favoris d'un utilisateur, y compris le nom du film associé.
function getFavorie() {
    try {
        $cnx = new PDO("mysql:host=" . HOST . ";dbname=" . DBNAME, DBLOGIN, DBPWD);
        $sql = "SELECT Favorie.id, Favorie.id_profil, Favorie.id_movie, Movie.name 
                FROM Favorie 
                JOIN Movie ON Favorie.id_movie = Movie.id";
        $stmt = $cnx->prepare($sql);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_OBJ);
        return $res;
    } catch (Exception $e) {
        return false;
    }
}

// Ajoute un film à la base de données.
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

// Ajoute un profil utilisateur à la base de données.
function addProfil($name, $avatar, $age_restriction) {
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    $sql = 'INSERT INTO Profil(name, avatar, age_restriction) VALUES(:name, :avatar, :age_restriction)';
    $stmt = $cnx->prepare($sql);
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':avatar', $avatar);
    $stmt->bindParam(':age_restriction', $age_restriction);
  
    $stmt->execute();
    return $stmt->rowCount();
}

// Modifie un profil utilisateur dans la base de données.
function modProfil($id, $name, $avatar, $age_restriction) {
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    $sql = 'UPDATE Profil SET name = :name, avatar = :avatar, age_restriction = :age_restriction WHERE id = :id';
    $stmt = $cnx->prepare($sql);
    $stmt->bindParam(':id', $id);
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':avatar', $avatar);
    $stmt->bindParam(':age_restriction', $age_restriction);
  
    $stmt->execute();
    return $stmt->rowCount();
}

// Ajoute un film aux favoris d'un utilisateur.
function addFavorie($id_profil, $id_movie) {
    $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
    $sql = 'INSERT INTO Favorie(id_profil, id_movie) VALUES(:id_profil, :id_movie)';
    $stmt = $cnx->prepare($sql);
    $stmt->bindParam(':id_profil', $id_profil);
    $stmt->bindParam(':id_movie', $id_movie);
  
    $stmt->execute();
    return $stmt->rowCount();
}

// Supprime un film des favoris d'un utilisateur.
function delFavorie($id_profil, $id_movie) {
    try {
        $cnx = new PDO("mysql:host=" . HOST . ";dbname=" . DBNAME, DBLOGIN, DBPWD);
        $sql = "DELETE FROM Favorie WHERE id_profil = :id_profil AND id_movie = :id_movie";
        $stmt = $cnx->prepare($sql);
        $stmt->bindParam(':id_profil', $id_profil, PDO::PARAM_INT);
        $stmt->bindParam(':id_movie', $id_movie, PDO::PARAM_INT);
        return $stmt->execute();
    } catch (Exception $e) {
        return false;
    }
}