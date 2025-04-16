let templateFile = await fetch("./component/FavorieCard/template.html");
let template = await templateFile.text();

let FavorieCard = {};

FavorieCard.format = function (Name) {
  let html = template;
  html = html.replace("{{Name}}", Name);
  return html;
};

export { FavorieCard };
