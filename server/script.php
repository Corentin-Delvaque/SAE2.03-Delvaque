<?php

require("controller.php");

if ( isset($_REQUEST['todo']) ){

  header('Content-Type: application/json');

  $todo = $_REQUEST['todo'];

  switch($todo){
    case 'getMovies':
      $data = getMoviesController();
      break;

    case 'getMoviesFiltered':
      $data = getMoviesFilteredController();
      break;

    case 'addMovie':
        $data = addMovieController();
      break;

    case 'addProfil':
        $data = addProfilController();
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