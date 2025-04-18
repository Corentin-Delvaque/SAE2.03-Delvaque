let HOST_URL = "https://mmi.unilim.fr/~delvaque1/SAE2.03-Delvaque/rendu/";

let DataProfil = {};

DataProfil.getProfils = async function () {
  let response = await fetch(HOST_URL + "/server/script.php?todo=getProfils");
  let profils = await response.json();
  return profils;
};

export { DataProfil };
