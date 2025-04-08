import { AnimeCard } from "../AnimeCard/script.js";
import { DataMovie } from "../../data/dataMovie.js";

let CategorySection = {};

CategorySection.format = async function (categoryId, categoryName) {
  // Récupérer les films filtrés par catégorie
  let movies = await DataMovie.getMoviesFiltered(categoryId);
  console.log(`Films pour la catégorie ${categoryName}:`, movies); // Debug

  // Générer le HTML pour la section
  let html = `
    <div class="category-section">
      <h2 class="category-section__title">${categoryName}</h2>
      <div class="category-section__content">
        ${movies
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
          .join("")}
      </div>
    </div>
  `;
  return html;
};

export { CategorySection };
