let HOST_URL = "https://mmi.unilim.fr/~delvaque1/SAE2.03-Delvaque/";

let DataMovie = {};

DataMovie.getMovies = async function () {
  let response = await fetch(HOST_URL + "/server/script.php?todo=getMovies");
  let movies = await response.json();
  return movies;
};

export { DataMovie };