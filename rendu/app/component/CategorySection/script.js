import { AnimeCard } from "../AnimeCard/script.js";
import { DataMovie } from "../../data/dataMovie.js";

let templateFile = await fetch("./component/CategorySection/template.html");
let template = await templateFile.text();

let CategorySection = {};

CategorySection.format = async function (categoryId, categoryName) {
  // Récupérer les films filtrés par catégorie
  let movies = await DataMovie.getMoviesFiltered(categoryId);
  console.log(`Films pour la catégorie ${categoryName}:`, movies); // Debug

  // Générer le contenu des cartes
  let content = movies
    .map((movie) =>
      AnimeCard.format(
        movie.trailer,
        movie.image,
        movie.description,
        movie.director,
        movie.year,
        movie.length,
        movie.min_age,
        movie.name,
        movie.id
      )
    )
    .join("");

  // Remplacer les placeholders dans le modèle
  let html = template
    .replace("{{Categorie}}", categoryName)
    .replace("{{Content}}", content);

  return html;
};

export { CategorySection };
