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
(1, 'Jujutsu Kaisen 0', 2021, 105, 'Yuta rejoint l\'école d\'exorcisme pour maîtriser une malédiction puissante.', 'Sunghoo Park', 5, 'jujutsu_kaisen_0.jpg', 'https://www.youtube.com/embed/eGSL-l95VXw', 14),
(2, 'Darling in the FranXX', 2018, 24, 'Des enfants pilotent des robots pour protéger l\'humanité.', 'Atsushi Nishigori', 5, 'darling_franxx.jpg', 'https://www.youtube.com/embed/8xLji7WsPqI', 14),
(3, 'One Piece Film: Red', 2022, 115, 'Le monde découvre enfin le plus grand secret de Shanks.', 'Gorō Taniguchi', 5, 'one_piece_red.jpg', 'https://www.youtube.com/embed/89JWRYEIG-s', 10),
(4, 'Oshi no Ko', 2023, 11, 'Une idole meurt tragiquement et se réincarne dans le monde du showbiz.', 'Daisuke Hiramaki', 5, 'oshi_no_ko.jpg', 'https://www.youtube.com/embed/oz7YjvQ2-2g', 14),
(5, 'Dandadan', 2025, NULL, 'Une lycéenne affronte aliens et esprits avec un camarade possédé.', 'Fuga Yamashiro', 5, 'dandadan.jpg', 'https://www.youtube.com/embed/fake_trailer', 14),
(6, 'Demon Slayer: Mugen Train', 2020, 117, 'Tanjiro et ses compagnons affrontent un démon dans un train.', 'Haruo Sotozaki', 5, 'mugen_train.jpg', 'https://www.youtube.com/embed/ATJYac_dORw', 14),
(7, 'Hazbin Hotel', 2024, 8, 'Une démone tente de réhabiliter les âmes de l\'enfer.', 'Vivienne Medrano', 5, 'hazbin_hotel.jpg', 'https://www.youtube.com/embed/zlmsW3vMjEY', 16),
(8, 'Spy x Family', 2022, 25, 'Un espion, une tueuse et une télépathe forment une famille.', 'Kazuhiro Furuhashi', 5, 'spy_family.jpg', 'https://www.youtube.com/embed/CCXLUQecpLU', 10),
(9, 'Assassination Classroom', 2015, 22, 'Des élèves doivent tuer leur prof extraterrestre avant qu’il ne détruise la Terre.', 'Seiji Kishi', 5, 'assassination_classroom.jpg', 'https://www.youtube.com/embed/2zMJY4eGx3I', 12),
(10, 'Death Note', 2006, 37, 'Un lycéen découvre un carnet qui tue quiconque dont le nom est écrit.', 'Tetsurō Araki', 5, 'death_note.jpg', 'https://www.youtube.com/embed/NlJZ-YgAt-c', 16),
(11, 'Rascal Does Not Dream of Bunny Girl Senpai', 2018, 13, 'Un adolescent enquête sur des phénomènes surnaturels liés à des adolescentes.', 'Sōichi Masui', 5, 'bunny_girl.jpg', 'https://www.youtube.com/embed/x8lbCaxhZaM', 14),
(12, 'School Days', 2007, 12, 'Un triangle amoureux tourne au cauchemar.', 'Keitaro Motonaga', 5, 'school_days.jpg', 'https://www.youtube.com/embed/kRcezEvLyZ8', 16),
(13, 'Tokyo Revengers', 2021, 24, 'Un jeune adulte voyage dans le passé pour sauver son ex-petite amie.', 'Koichi Hatsumi', 5, 'tokyo_revengers.jpg', 'https://www.youtube.com/embed/eDS5kWU8xUo', 14),
(14, 'The Apothecary Diaries', 2023, 24, 'Une jeune femme résout des mystères médicaux dans un palais impérial.', 'Norihiro Naganuma', 5, 'apothecary_diaries.jpg', 'https://www.youtube.com/embed/FfgrcVXB0uA', 10),
(15, 'Rent-a-Girlfriend', 2020, 12, 'Un étudiant loue une petite amie après une rupture.', 'Kazuomi Koga', 5, 'rent_a_girlfriend.jpg', 'https://www.youtube.com/embed/7dHb9n1Z0L0', 14),
(16, 'Princesse Mononoké', 1997, 134, 'Un prince maudit part en quête de vérité entre humains et esprits de la forêt.', 'Hayao Miyazaki', 9, 'princesse_mononoke.jpg', 'https://www.youtube.com/embed/4OiMOHRDs14', 12),
(17, 'Weathering With You', 2019, 112, 'Un lycéen rencontre une fille capable de contrôler la météo.', 'Makoto Shinkai', 5, 'weathering_with_you.jpg', 'https://www.youtube.com/embed/Q6iK6DjV_iE', 10),
(18, 'Your Name', 2016, 107, 'Deux adolescents échangent leurs corps de manière mystérieuse.', 'Makoto Shinkai', 5, 'your_name.jpg', 'https://www.youtube.com/embed/AROOK45LXXg', 10),
(19, 'Josee, the Tiger and the Fish', 2020, 98, 'Une jeune femme en fauteuil roulant et un étudiant découvrent le monde ensemble.', 'Kotaro Tamura', 5, 'josee_tiger_fish.jpg', 'https://www.youtube.com/embed/2wEjyrXkrL4', 10),
(20, 'Attack on Titan', 2013, 25, 'L\'humanité lutte pour survivre face à des titans dévoreurs d\'hommes.', 'Tetsurō Araki', 5, 'attack_on_titan.jpg', 'https://www.youtube.com/embed/MGRm4IzK1SQ', 16),
(21, 'Bleach: Thousand-Year Blood War', 2022, 13, 'Ichigo revient combattre une nouvelle menace pour la Soul Society.', 'Tomohisa Taguchi', 5, 'bleach_ty_bw.jpg', 'https://www.youtube.com/embed/fzR82oXbjnY', 14),
(22, 'Chainsaw Man', 2022, 12, 'Un jeune homme fusionne avec son démon-tronçonneuse pour combattre d\'autres démons.', 'Ryū Nakayama', 5, 'chainsaw_man.jpg', 'https://www.youtube.com/embed/dFlDRhvM4L0', 16),
(23, 'Blue Lock', 2022, 24, 'Des jeunes footballeurs s\'affrontent pour devenir l\'attaquant ultime du Japon.', 'Tetsuaki Watanabe', 5, 'blue_lock.jpg', 'https://www.youtube.com/embed/VJRydzAkO9E', 10),
(24, 'Mob Psycho 100', 2016, 25, 'Un collégien surpuissant tente de mener une vie normale malgré ses pouvoirs psychiques.', 'Yuzuru Tachikawa', 5, 'mob_psycho.jpg', 'https://www.youtube.com/embed/9MgB5khWybE', 14);


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
