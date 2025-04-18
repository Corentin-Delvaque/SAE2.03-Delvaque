let HOST_URL = "https://mmi.unilim.fr/~delvaque1/SAE2.03-Delvaque/rendu/";

let DataMovie = {};

DataMovie.getMovies = async function (age = 0) {
  let response = await fetch(
    HOST_URL + "/server/script.php?todo=getMovies&age=" + age
  );
  let movies = await response.json();
  return movies;
};

DataMovie.getMoviesFiltered = async function (categoryId, age = 0) {
  let response = await fetch(
    HOST_URL +
      "/server/script.php?todo=getMoviesFiltered&id_category=" +
      categoryId +
      "&age=" +
      age
  );
  let movies = await response.json();
  console.log(
    `Données récupérées pour la catégorie ${categoryId} et âge ${age}:`,
    movies
  );
  return movies;
};

export { DataMovie };
