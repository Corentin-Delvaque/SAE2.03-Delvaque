let templateFile = await fetch("./component/ModProfilForm/template.html");
let template = await templateFile.text();

let ModProfil = {};

ModProfil.format = function (handler) {
  let html = template;
  html = html.replace("{{handler}}", handler);
  return html;
};

export { ModProfil };
