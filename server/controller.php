<?php

require("model.php");

function getMoviesController() {
    $movies = getMovies();
    if ($movies === false) {
        return false;
    }
    return $movies;
}

function getProfilsController() {
    $id = $_REQUEST['id'];
    $name = $_REQUEST['name'];
    $avatar = $_REQUEST['avatar'];
    $age_restriction = $_REQUEST['age_restriction'];
    return getProfils($id, $name, $avatar, $age_restriction);
}

function getMoviesFilteredController() {
    $id_category = $_REQUEST['id_category'];
    return getMoviesFiltered($id_category, "%", "%");
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