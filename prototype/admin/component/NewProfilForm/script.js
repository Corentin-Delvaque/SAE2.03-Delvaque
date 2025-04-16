let templateFile = await fetch("./component/NewProfilForm/template.html");
let template = await templateFile.text();

let NewProfil = {};

NewProfil.format = function (handler) {
  let html = template;
  html = html.replace("{{handler}}", handler);
  return html;
};

export { NewProfil };
