let templateFile = await fetch("./component/NewAnimeForm/template.html");
let template = await templateFile.text();

let NewAnime = {};

NewAnime.format = function (handler) {
  let html = template;
  html = html.replace("{{handler}}", handler);
  return html;
};

export { NewAnime };
