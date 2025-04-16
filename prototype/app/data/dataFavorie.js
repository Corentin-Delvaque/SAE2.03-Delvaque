let HOST_URL = "https://mmi.unilim.fr/~delvaque1/SAE2.03-Delvaque/prototype/";

let DataFavorie = {};

DataFavorie.getFavorie = async function () {
  let response = await fetch(HOST_URL + "/server/script.php?todo=getFavorie");
  let favories = await response.json();
  return favories;
};

DataFavorie.addFavorie = async function (id_profil, id_movie) {
  const formData = new FormData();
  formData.append("id_profil", id_profil);
  formData.append("id_movie", id_movie);

  const response = await fetch(
    HOST_URL + "/server/script.php?todo=addFavorie",
    {
      method: "POST",
      body: formData,
    }
  );

  return response.ok;
};

DataFavorie.delFavorie = async function (id_profil, id_movie) {
  const formData = new FormData();
  formData.append("id_profil", id_profil);
  formData.append("id_movie", id_movie);

  const response = await fetch(
    HOST_URL + "/server/script.php?todo=delFavorie",
    {
      method: "POST",
      body: formData,
    }
  );

  return response.ok;
};

export { DataFavorie };
