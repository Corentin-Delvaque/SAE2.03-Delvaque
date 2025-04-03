<?php

require("model.php");

function getMoviesController() {
    $movies = getMovies();
    if ($movies === false) {
        return false;
    }
    return $movies;
}

