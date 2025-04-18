# 🗃️ README – Modifications de la base de données

## ✅ Iteration 5 – Ajout de la table `Profil`

### 🗂️ Structure de la table `Profil` :

| Champ             | Type         | Description                                                                            |
| ----------------- | ------------ | -------------------------------------------------------------------------------------- |
| `id`              | INT          | **Clé primaire**, auto-incrémentée. Sert à identifier de manière unique chaque profil. |
| `name`            | VARCHAR(255) | Nom du profil (ex. Enfant, Ado, Adulte).                                               |
| `avatar`          | VARCHAR(255) | URL vers une image représentant l'avatar du profil.                                    |
| `age_restriction` | INT          | Représente une limite d'âge pour restreindre l'accès à certains contenus.              |

### 📌 Justifications :

- **Clé primaire (`id`)** : indispensable pour identifier chaque ligne de manière unique dans la table. On utilise un entier auto-incrémenté pour garder les identifiants simples et uniques.
- **VARCHAR(255)** pour `name` et `avatar` : 255 caractères est une longueur standard largement suffisante pour des noms ou des URL.
- **INT pour `age_restriction`** : simple à manipuler en comparaison avec des dates de naissance. On compare directement l'âge minimal requis avec celui du profil.
- **Pas de relation** à cette étape, car le profil est encore indépendant des autres entités.

---

## ⭐ Iteration 9 – Ajout de la table `Favorie`

### 🗂️ Structure de la table `Favorie` :

| Champ       | Type | Description                                                                    |
| ----------- | ---- | ------------------------------------------------------------------------------ |
| `id`        | INT  | **Clé primaire**, auto-incrémentée. Identifie chaque enregistrement de favori. |
| `id_profil` | INT  | **Clé étrangère** vers `Profil(id)`. Référence le profil utilisateur.          |
| `id_movie`  | INT  | **Clé étrangère** vers `Movie(id)`. Référence le film ajouté en favori.        |

### 🔗 Relations & Cardinalités :

- Un **profil** peut avoir **0 à N favoris**.
- Un **film** peut être mis en favori par **0 à N profils**.

### 📌 Justifications :

- **Clé primaire (`id`)** : comme pour toutes les entités, elle assure l’unicité de chaque enregistrement. L’auto-incrément garantit un ID unique sans collision.
- **Clés étrangères (`id_profil`, `id_movie`)** : elles permettent d’assurer l’intégrité référentielle. On garantit que chaque favori pointe vers un profil et un film existants.
- **Index** ajoutés sur les clés étrangères pour accélérer les recherches (ex. afficher tous les favoris d’un profil).
- **Aucune contrainte d’unicité sur le couple (`id_profil`, `id_movie`)** dans la version actuelle, ce qui signifie qu’un utilisateur pourrait ajouter plusieurs fois le même film en favori. (ce problème a été corrigé grâce au script)

---

📌 _Ces modifications correspondent uniquement aux itérations 5 et 9. Les itérations suivantes pourront ajouter des relations, des contraintes supplémentaires ou de nouvelles entités._
