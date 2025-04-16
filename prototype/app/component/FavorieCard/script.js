const templateFile = await fetch("./component/FavorieCard/template.html");
const template = await templateFile.text();

const FavorieCard = {};

FavorieCard.format = function (Name) {
  return template.replace("{{Name}}", Name);
};

export { FavorieCard };
