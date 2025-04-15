import { DataFavorie } from "../../data/dataFavorie.js";

let templateFile = await fetch("./component/AnimeCard/template.html");
let template = await templateFile.text();

let AnimeCard = {};

AnimeCard.format = function (
  Trailer,
  Affiche,
  Description,
  Director,
  Year,
  Length,
  Min_Age,
  Name,
  id
) {
  let html = template;

  let truncatedName = Name.length > 20 ? Name.substring(0, 20) + "..." : Name;
  let truncatedDescription =
    Description.length > 100
      ? Description.substring(0, 100) + "..."
      : Description;

  html = html.replace("{{Trailer}}", Trailer);
  html = html.replace("{{Trailer}}", Trailer);
  html = html.replace("{{Affiche}}", Affiche);
  html = html.replace("{{Description}}", truncatedDescription);
  html = html.replace("{{Director}}", Director);
  html = html.replace("{{Year}}", Year);
  html = html.replace("{{Length}}", Length);
  html = html.replace("{{Min_Age}}", Min_Age);
  html = html.replace("{{Name}}", truncatedName);
  html = html.replace("{{Name}}", truncatedName);
  html = html.replace("{{Name}}", truncatedName);
  html = html.replace("{{Name}}", truncatedName);
  html = html.replace("{{Name}}", truncatedName);
  html = html.replace("{{Name}}", truncatedName);
  html = html.replace("{{id}}", id);
  html = html.replace("{{id}}", id);
  return html;
};

window.handleLike = async function (button) {
  const movieId = button.getAttribute("data-id");
  const profilId = window.selectedProfilId; // Assurez-vous que cette variable est définie globalement

  if (!profilId) {
    alert("Veuillez sélectionner un profil avant d'ajouter un favori.");
    return;
  }

  // Vérifiez si le film est déjà dans les favoris
  const existingFavorie = await DataFavorie.getFavorie();
  const isAlreadyFavorited = existingFavorie.some(
    (favorie) => favorie.id_movie == movieId && favorie.id_profil == profilId
  );

  if (isAlreadyFavorited) {
    alert("Ce film est déjà dans vos favoris.");
    return;
  }

  // Ajoutez le film aux favoris
  const success = await DataFavorie.addFavorie(profilId, movieId);
  if (success) {
    alert("Film ajouté aux favoris !");
  } else {
    alert("Une erreur s'est produite lors de l'ajout aux favoris.");
  }
};

window.handleDislike = async function (button) {
  const movieId = button.getAttribute("data-id");
  const profilId = window.selectedProfilId;

  if (!profilId) {
    alert("Veuillez sélectionner un profil avant de supprimer un favori.");
    return;
  }

  const existingFavorie = await DataFavorie.getFavorie();
  const isAlreadyFavorited = existingFavorie.some(
    (favorie) => favorie.id_movie == movieId && favorie.id_profil == profilId
  );

  if (!isAlreadyFavorited) {
    alert("Ce film n'est pas dans vos favoris.");
    return;
  }

  // Supprimez le film des favoris
  const success = await DataFavorie.delFavorie(profilId, movieId);
  if (success) {
    alert("Film supprimé des favoris !");
  } else {
    alert("Une erreur s'est produite lors de la suppression des favoris.");
  }
};

export { AnimeCard };
