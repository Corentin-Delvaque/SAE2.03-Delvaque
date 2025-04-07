<?php

require("model.php");

function getMoviesController() {
    $movies = getMovies();
    if ($movies === false) {
        return false;
    }
    return $movies;
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

    // Appelle la fonction du modèle pour ajouter le film
    return addMovie($name, $year, $length, $description, $director, $id_category, $image, $trailer, $min_age);
}