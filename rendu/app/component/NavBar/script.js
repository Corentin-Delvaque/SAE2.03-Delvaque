const templateFile = await fetch("./component/NavBar/template.html");
const template = await templateFile.text();

const NavBar = {};

let html = template;

NavBar.format = function (hAbout, hRecherche, hHelp) {
  html = html.replace("{{hAbout}}", hAbout);
  html = html.replace("{{hRecherche}}", hRecherche);
  html = html.replace("{{hHelp}}", hHelp);

  return html;
};

export { NavBar };
