let HOST_URL = "https://mmi.unilim.fr/~delvaque1/SAE2.03-Delvaque/prototype/";
let DataProfil = {};

DataProfil.addProfil = async function (fdata) {
  // fetch possède un deuxième paramètre (optionnel) qui est un objet de configuration de la requête HTTP:
  //  - method : la méthode HTTP à utiliser (GET, POST...)
  //  - body : les données à envoyer au serveur (sous forme d'objet FormData ou bien d'une chaîne de caractères, par exempe JSON)
  let config = {
    method: "POST", // méthode HTTP à utiliser
    body: fdata, // données à envoyer sous forme d'objet FormData
  };
  let answer = await fetch(
    HOST_URL + "/server/script.php?todo=addProfil",
    config
  );
  let data = await answer.json();

  V.renderLog("Utilisateur créé.");
  return data;
};

DataProfil.modProfil = async function (fdata) {
  // fetch possède un deuxième paramètre (optionnel) qui est un objet de configuration de la requête HTTP:
  //  - method : la méthode HTTP à utiliser (GET, POST...)
  //  - body : les données à envoyer au serveur (sous forme d'objet FormData ou bien d'une chaîne de caractères, par exempe JSON)
  let config = {
    method: "POST", // méthode HTTP à utiliser
    body: fdata, // données à envoyer sous forme d'objet FormData
  };
  let answer = await fetch(
    HOST_URL + "/server/script.php?todo=modProfil",
    config
  );
  let data = await answer.json();

  V.renderLog("Utilisateur modifié.");
  return data;
};

export { DataProfil };
