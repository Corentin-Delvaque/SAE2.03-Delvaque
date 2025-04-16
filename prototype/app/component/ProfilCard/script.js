let templateFile = await fetch("./component/ProfilCard/template.html");
let template = await templateFile.text();

let ProfilCard = {};

ProfilCard.format = function (Name, Avatar, Age_Restriction, id) {
  let html = template;

  html = html.replace("{{Name}}", Name);
  html = html.replace("{{Age_Restriction}}", Age_Restriction);
  html = html.replace("{{id}}", id);
  return html;
};

export { ProfilCard };
