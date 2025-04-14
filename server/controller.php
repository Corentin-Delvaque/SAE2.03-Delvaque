<?php

require("model.php");

function getMoviesController($age) {
    $movies = getMovies($age);
    if ($movies === false) {
        return false;
    }
    return $movies;
}

function getMoviesFilteredController($age) {
    $id_category = $_REQUEST['id_category'];
    return getMoviesFiltered($id_category, "%", "%", $age);
}

function getProfilsController() {
    $id = $_REQUEST['id'];
    $name = $_REQUEST['name'];
    $avatar = $_REQUEST['avatar'];
    $age_restriction = $_REQUEST['age_restriction'];
    return getProfils($id, $name, $avatar, $age_restriction);
}

function getFavorieController() {
    $id = $_REQUEST['id'];
    $id_profil = $_REQUEST['id_profil'];
    $id_movie = $_REQUEST['id_movie'];
    return getFavorie($id, $id_profil, $id_movie);
}

function addMovieController() {
    $name = $_REQUEST['name'];
    $year = $_REQUEST['year'];
    $length = $_REQUEST['length'];
    $description = $_REQUEST['description'];
    $director = $_REQUEST['director'];
    $id_category = $_REQUEST['id_category'];
    $image = $_REQUEST['image'];
    $trailer = $_REQUEST['trailer'];
    $min_age = $_REQUEST['min_age'];

    return addMovie($name, $year, $length, $description, $director, $id_category, $image, $trailer, $min_age);
}

function addProfilController() {
    $name = $_REQUEST['name'];
    $avatar = $_REQUEST['avatar'];
    $age_restriction = $_REQUEST['age_restriction'];

    return addProfil($name, $avatar, $age_restriction);
}

function modProfilController() {
    $id = $_REQUEST['id'];
    $name = $_REQUEST['name'];
    $avatar = $_REQUEST['avatar'];
    $age_restriction = $_REQUEST['age_restriction'];

    return modProfil($id, $name, $avatar, $age_restriction);
}

function addFavorieController() {
    $id_profil = $_REQUEST['id_profil'];
    $id_movie = $_REQUEST['id_movie'];

    return addFavorie($id_profil, $id_movie);
}

function delFavorieController() {
    $id = $_REQUEST['id'];
    $id_profil = $_REQUEST['id_profil'];
    $id_movie = $_REQUEST['id_movie'];

    return delFavorie($id, $id_profil, $id_movie);
}