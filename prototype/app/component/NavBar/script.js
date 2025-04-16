const templateFile = await fetch("./component/NavBar/template.html");
const template = await templateFile.text();

const NavBar = {};

NavBar.format = function (hAbout) {
  return template.replace("{{hAbout}}", hAbout);
};

export { NavBar };
