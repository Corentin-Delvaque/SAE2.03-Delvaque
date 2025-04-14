<?php

require("controller.php");

if ( isset($_REQUEST['todo']) ){

  header('Content-Type: application/json');

  $todo = $_REQUEST['todo'];
  $age = isset($_REQUEST['age']) ? intval($_REQUEST['age']) : 0;

  switch($todo){
    case 'getMovies':
      $data = getMoviesController($age);
      break;

    case 'getMoviesFiltered':
      $data = getMoviesFilteredController($age);
      break;

    case 'getProfils':
      $data = getProfilsController();
      break;

    case 'addMovie':
        $data = addMovieController();
      break;

    case 'addProfil':
        $data = addProfilController();
      break;

    case 'modProfil':
        $data = modProfilController();
      break;

    default: 
      echo json_encode('[error] Unknown todo value');
      http_response_code(400); 
      exit();
  }

  if ($data===false){
    echo json_encode('[error] Controller returns false');
    http_response_code(500); 
    exit();
  }

  echo json_encode($data);
  http_response_code(200);
  exit();

   
} 

http_response_code(404); 

?>