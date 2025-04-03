-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 28 mars 2025 à 18:01
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `SAE2.03`
--

-- --------------------------------------------------------

--
-- Structure de la table `Category`
--

CREATE TABLE `Category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Category`
--

INSERT INTO `Category` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Comédie'),
(3, 'Drame'),
(4, 'Science-fiction'),
(5, 'Animation'),
(6, 'Thriller'),
(7, 'Horreur'),
(8, 'Aventure'),
(9, 'Fantaisie'),
(10, 'Documentaire');

-- --------------------------------------------------------

--
-- Structure de la table `Movie`
--

CREATE TABLE `Movie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `description` text,
  `director` varchar(255) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `min_age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Movie`
--

INSERT INTO `Movie` (`id`, `name`, `year`, `length`, `description`, `director`, `id_category`, `image`, `trailer`, `min_age`) VALUES
(0, 'SAO: Ordinal Scale', 2017, 119, 'Un jeu en réalité augmentée devient un danger mortel.', 'Tomohiko Itō', 5, 'sao_ordinal_scale.jpg', 'https://www.youtube.com/embed/VRm5mF6c9Dk', 12),
(1, 'Princesse Mononoké', 1997, 134, 'Un prince maudit part en quête de vérité entre humains et esprits de la forêt.', 'Hayao Miyazaki', 9, 'princesse_mononoke.jpg', 'https://www.youtube.com/embed/4OiMOHRDs14', 12),
(2, 'Weathering With You', 2019, 112, 'Un lycéen rencontre une fille capable de contrôler la météo.', 'Makoto Shinkai', 5, 'weathering_with_you.jpg', 'https://www.youtube.com/embed/Q6iK6DjV_iE', 10),
(3, 'Josee, the Tiger and the Fish', 2020, 98, 'Une jeune femme en fauteuil roulant et un étudiant découvrent le monde ensemble.', 'Kotaro Tamura', 5, 'josee_tiger_fish.jpg', 'https://www.youtube.com/embed/2wEjyrXkrL4', 10),
(4, 'One Piece Film: Red', 2022, 115, 'Le monde découvre enfin le plus grand secret de Shanks.', 'Gorō Taniguchi', 5, 'one_piece_red.jpg', 'https://www.youtube.com/embed/89JWRYEIG-s', 10),
(5, 'Your Name', 2016, 107, 'Deux adolescents échangent leurs corps de manière mystérieuse.', 'Makoto Shinkai', 5, 'your_name.jpg', 'https://www.youtube.com/embed/AROOK45LXXg', 10),
(6, 'Interstellar', 2014, 169, 'Un groupe d’explorateurs voyage à travers un trou de ver.', 'Christopher Nolan', 4, 'interstellar.jpg', 'https://www.youtube.com/embed/VaOijhK3CRU', 12),
(7, 'La Liste de Schindler', 1993, 195, 'Un industriel allemand sauve des Juifs pendant l’Holocauste.', 'Steven Spielberg', 3, 'schindler.jpg', 'https://www.youtube.com/embed/ONWtyxzl-GE', 16),
(8, 'Le Bon, la Brute et le Truand', 1966, 161, 'Trois hommes se lancent à la recherche d’un trésor caché.', 'Sergio Leone', 8, 'bon_brute_truand.jpg', 'https://www.youtube.com/embed/WA1hCZFOPqs', 12),
(9, 'Le Voyage de Chihiro', 2001, 125, 'Une fillette se retrouve piégée dans un monde spirituel.', 'Hayao Miyazaki', 9, 'voyage_chihiro.jpg', 'https://www.youtube.com/embed/ByXuk9QqQkk', 10),
(10, 'Akira', 1988, 124, 'Dans un Tokyo futuriste, un adolescent développe des pouvoirs psychiques.', 'Katsuhiro Otomo', 4, 'akira.jpg', 'https://www.youtube.com/embed/7G5zQW4TinQ', 16),
(11, 'Parasite', 2019, 132, 'Une famille pauvre infiltre la maison d’une famille riche.', 'Bong Joon-ho', 6, 'parasite.jpg', 'https://www.youtube.com/embed/5xH0HfJHsaY', 12),
(12, 'Inception', 2010, 148, 'Un voleur pénètre les rêves de ses victimes pour leur voler des secrets.', 'Christopher Nolan', 4, 'inception.jpg', 'https://www.youtube.com/embed/YoHD9XEInc0', 12),
(13, 'Fight Club', 1999, 139, 'Un employé insomniaque fonde un club de combat clandestin.', 'David Fincher', 6, 'fight_club.jpg', 'https://www.youtube.com/embed/qtRKdVHc-cE', 16),
(14, 'Le Seigneur des Anneaux: Le Retour du Roi', 2003, 201, 'L’ultime bataille pour la Terre du Milieu.', 'Peter Jackson', 9, 'lotr_return.jpg', 'https://www.youtube.com/embed/r5X-hFf6Bwo', 12),
(15, 'The Dark Knight', 2008, 152, 'Batman affronte le Joker, un criminel anarchique.', 'Christopher Nolan', 1, 'dark_knight.jpg', 'https://www.youtube.com/embed/EXeTwQWrcwY', 12),
(16, 'Titanic', 1997, 195, 'Une romance tragique sur le célèbre navire.', 'James Cameron', 3, 'titanic.jpg', 'https://www.youtube.com/embed/kVrqfYjkTdQ', 10),
(17, 'Forrest Gump', 1994, 142, 'La vie extraordinaire d’un homme simple.', 'Robert Zemeckis', 3, 'forrest_gump.jpg', 'https://www.youtube.com/embed/bLvqoHBptjg', 10),
(18, 'Star Wars: Un Nouvel Espoir', 1977, 121, 'Un jeune fermier devient un chevalier Jedi et affronte l’Empire.', 'George Lucas', 4, 'star_wars.jpg', 'https://www.youtube.com/embed/vZ734NWnAHA', 10),
(19, 'Pulp Fiction', 1994, 154, 'Des histoires entrelacées de criminels à Los Angeles.', 'Quentin Tarantino', 6, 'pulp_fiction.jpg', 'https://www.youtube.com/embed/s7EdQ4FqbhY', 16);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `Movie`
--
ALTER TABLE `Movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `Category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
