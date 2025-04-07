let templateFile = await fetch("./component/AnimeCard/template.html");
let template = await templateFile.text();

let AnimeCard = {};

AnimeCard.format = function (
  Trailer,
  Affiche,
  Description,
  Year,
  Length,
  Min_Age,
  Name,
  id
) {
  let html = template;

  let truncatedName = Name.length > 20 ? Name.substring(0, 20) + "..." : Name;

  html = html.replace("{{Trailer}}", Trailer);
  html = html.replace("{{Affiche}}", Affiche);
  html = html.replace("{{Description}}", Description);
  html = html.replace("{{Year}}", Year);
  html = html.replace("{{Length}}", Length);
  html = html.replace("{{Min_Age}}", Min_Age);
  html = html.replace("{{Name}}", truncatedName);
  html = html.replace("{{Name}}", truncatedName);
  html = html.replace("{{Name}}", truncatedName);
  html = html.replace("{{Name}}", truncatedName);
  html = html.replace("{{id}}", id);
  return html;
};

export { AnimeCard };
