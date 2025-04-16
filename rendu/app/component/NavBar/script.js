let templateFile = await fetch("./component/NavBar/template.html");
let template = await templateFile.text();

let NavBar = {};

NavBar.format = function (hAbout, hProfil) {
  let html = template;
  html = html.replace("{{hAbout}}", hAbout);
  html = html.replace("{{hProfil}}", hProfil);
  return html;
};

export { NavBar };
