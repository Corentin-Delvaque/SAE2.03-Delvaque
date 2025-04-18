<?php

require("controller.php");

// Vérifie si un paramètre 'todo' est présent
if (isset($_REQUEST['todo'])) {

    header('Content-Type: application/json');

    $todo = $_REQUEST['todo'];
    $age = isset($_REQUEST['age']) ? intval($_REQUEST['age']) : 0;

    // Déclare une variable de réponse par défaut
    $data = null;

    // Route les actions vers les bons contrôleurs
    switch ($todo) {
        case 'getMovies':
            $data = getMoviesController($age);
            break;

        case 'getMoviesFiltered':
            $data = getMoviesFilteredController($age);
            break;

        case 'getProfils':
            $data = getProfilsController();
            break;

        case 'getFavorie':
            $data = getFavorieController();
            break;

        case 'addMovie':
            $data = addMovieController();
            break;

        case 'addProfil':
            $data = addProfilController();
            break;

        case 'addFavorie':
            $data = addFavorieController();
            break;

        case 'modProfil':
            $data = modProfilController();
            break;

        case 'delFavorie':
            $data = delFavorieController();
            break;

        default:
            http_response_code(400);
            echo json_encode(['error' => 'Unknown "todo" value']);
            exit();
    }

    // Gestion d'erreur au niveau du contrôleur
    if ($data === false) {
        http_response_code(500);
        echo json_encode(['error' => 'Controller returned false']);
        exit();
    }

    // Réponse OK
    http_response_code(200);
    echo json_encode($data);
    exit();
}

// Aucun paramètre 'todo' fourni
http_response_code(404);
echo json_encode(['error' => 'Missing "todo" parameter']);
exit();

?>