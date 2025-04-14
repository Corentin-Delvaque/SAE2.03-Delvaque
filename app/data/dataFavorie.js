let HOST_URL = "https://mmi.unilim.fr/~delvaque1/SAE2.03-Delvaque/";

let DataFavorie = {};

DataFavorie.getFavorie = async function () {
  let response = await fetch(HOST_URL + "/server/script.php?todo=getFavorie");
  let favories = await response.json();
  return favories;
};

DataFavorie.addFavorie = async function () {
  let response = await fetch(HOST_URL + "/server/script.php?todo=addFavorie");
  let favories = await response.json();
  return favories;
};

DataFavorie.delFavorie = async function () {
  let response = await fetch(HOST_URL + "/server/script.php?todo=delFavorie");
  let favories = await response.json();
  return favories;
};

export { DataFavorie };
