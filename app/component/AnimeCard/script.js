let templateFile = await fetch("./component/AnimeCard/template.html");
let template = await templateFile.text();

let AnimeCard = {};

AnimeCard.format = function (Affiche, Name) {
  let html = template;

  let truncatedName = Name.length > 20 ? Name.substring(0, 20) + "..." : Name;

  html = html.replace("{{Affiche}}", Affiche);
  html = html.replace("{{Name}}", truncatedName);
  return html;
};

export { AnimeCard };
