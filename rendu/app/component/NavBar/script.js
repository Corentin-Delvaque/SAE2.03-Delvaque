const templateFile = await fetch("./component/NavBar/template.html");
const template = await templateFile.text();

const NavBar = {};

let html = template;

NavBar.format = function (hAbout, hRecherche) {
  html = html.replace("{{hAbout}}", hAbout);
  html = html.replace("{{hRecherche}}", hRecherche);

  return html;
};

export { NavBar };
