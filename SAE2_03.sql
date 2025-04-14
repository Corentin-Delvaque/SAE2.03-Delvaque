-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 14 avr. 2025 à 07:06
-- Version du serveur : 10.11.11-MariaDB-0+deb12u1
-- Version de PHP : 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `delvaque1`
--

-- --------------------------------------------------------

--
-- Structure de la table `Category`
--

CREATE TABLE `Category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `Category`
--

INSERT INTO `Category` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Comédie'),
(3, 'Drame'),
(4, 'Science-fiction'),
(5, 'Thriller'),
(6, 'Horreur'),
(7, 'Aventure'),
(8, 'Fantaisie'),
(9, 'Documentaire'),
(10, 'Romance');

-- --------------------------------------------------------

--
-- Structure de la table `Favorie`
--

CREATE TABLE `Favorie` (
  `id` int(11) NOT NULL,
  `id_profil` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Movie`
--

CREATE TABLE `Movie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `min_age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `Movie`
--

INSERT INTO `Movie` (`id`, `name`, `year`, `length`, `description`, `director`, `id_category`, `image`, `trailer`, `min_age`) VALUES
(1, 'Sword Art Online', 2012, 24, 'Un jeu en réalité augmentée devient un danger mortel.', 'Reki Kawahara', 4, 'Sword_Art_Online.jpg', 'https://www.youtube.com/embed/jfaUeCNm_o4?si=JSol6MImi1hipjgV', 12),
(2, 'Jujutsu Kaisen', 2021, 105, 'Des exorcistes affrontent des malédictions dans un monde où la mort rôde à chaque coin de rue, et un lycéen devenu réceptacle d’un démon surpuissant lutte pour garder le contrôle.', 'Sunghoo Park', 1, 'jujutsu_kaisen.jpg', 'https://www.youtube.com/embed/hkir9oZs0M0?si=t2izZtTOje03DkzB', 14),
(3, 'Darling in the FranXX', 2018, 24, 'Des enfants pilotent des robots pour protéger l\'humanité.', 'Atsushi Nishigori', 4, 'darling_franxx.jpg', 'https://www.youtube.com/embed/4zJZOSwmvUk?si=h_dlYTxYRKLE95MZ', 14),
(4, 'One Piece Film: Red', 2022, 115, 'Le monde découvre enfin le plus grand secret de Shanks.', 'Gorō Taniguchi', 7, 'one_piece_red.jpg', 'https://www.youtube.com/embed/XfkjE-NbYyA?si=gnDsJOjgTgKa2UDD', 10),
(5, 'Oshi no Ko', 2023, 11, 'Une idole meurt tragiquement et se réincarne dans le monde du showbiz.', 'Daisuke Hiramaki', 3, 'oshi_no_ko.jpg', 'https://www.youtube.com/embed/ijxs5m4EmiM?si=WnzMFsqonWXvOeDY', 14),
(6, 'Dandadan', 2025, 24, 'Une lycéenne affronte aliens et esprits avec un camarade possédé.', 'Fuga Yamashiro', 4, 'dandadan.jpg', 'https://www.youtube.com/embed/K7gb0V0O69g?si=ULXP1buBUHvNf2mK', 14),
(7, 'Demon Slayer: Mugen Train', 2020, 117, 'Tanjiro et ses compagnons affrontent un démon dans un train.', 'Haruo Sotozaki', 1, 'mugen_train.jpg', 'https://www.youtube.com/embed/Eam4YDTTkdI?si=biF87OurjYk0GIt5', 14),
(8, 'Hazbin Hotel', 2024, 8, 'Une démone tente de réhabiliter les âmes de l\'enfer.', 'Vivienne Medrano', 2, 'hazbin_hotel.jpg', 'https://www.youtube.com/embed/nJ8WbUub-zM?si=8PPE5siWtj6j_Ai4', 16),
(9, 'Spy x Family', 2022, 25, 'Un espion, une tueuse et une télépathe forment une famille.', 'Kazuhiro Furuhashi', 2, 'spy_family.jpg', 'https://www.youtube.com/embed/vP3kUeGMQ84?si=EL-OWu2Sedc46pEJ', 10),
(10, 'Assassination Classroom', 2015, 22, 'Des élèves doivent tuer leur prof extraterrestre avant qu’il ne détruise la Terre.', 'Seiji Kishi', 2, 'assassination_classroom.jpg', 'https://www.youtube.com/embed/6wkxbRgQWkI?si=Ey-m8N7KL0mKmH-3', 12),
(11, 'Death Note', 2006, 37, 'Un lycéen découvre un carnet qui tue quiconque dont le nom est écrit.', 'Tetsurō Araki', 5, 'death_note.jpg', 'https://www.youtube.com/embed/nzCF2W0IzsA?si=EcuOykRZnswf2gQR', 16),
(12, 'Rascal Does Not Dream of Bunny Girl Senpai', 2018, 13, 'Un adolescent enquête sur des phénomènes surnaturels liés à des adolescentes.', 'Sōichi Masui', 3, 'bunny_girl.jpg', 'https://www.youtube.com/embed/ZzSbJcBb0Es?si=AXpmeiaMzdTYBn-r', 14),
(13, 'School Days', 2007, 12, 'Un triangle amoureux tourne au cauchemar.', 'Keitaro Motonaga', 10, 'school_days.jpg', 'https://www.youtube.com/embed/ZG1Q6N5L-fo?si=povTJoP4wdetjSWd', 16),
(14, 'Tokyo Revengers', 2021, 24, 'Un jeune adulte voyage dans le passé pour sauver son ex-petite amie.', 'Koichi Hatsumi', 1, 'tokyo_revengers.jpg', 'https://www.youtube.com/embed/5K43BSTYXew?si=D4hkEFA_Sre9Wvmu', 14),
(15, 'The Apothecary Diaries', 2023, 24, 'Une jeune femme résout des mystères médicaux dans un palais impérial.', 'Norihiro Naganuma', 3, 'apothecary_diaries.jpg', 'https://www.youtube.com/embed/NrFRYrMizEw?si=rhB13iwXvIZCCDD7', 10),
(16, 'Rent-a-Girlfriend', 2020, 12, 'Un étudiant loue une petite amie après une rupture.', 'Kazuomi Koga', 10, 'rent_a_girlfriend.jpg', 'https://www.youtube.com/embed/ErhbPRW6ehc?si=IBzOOHvJXcRzywbZ', 14),
(17, 'Princesse Mononoké', 1997, 134, 'Un prince maudit part en quête de vérité entre humains et esprits de la forêt.', 'Hayao Miyazaki', 8, 'princesse_mononoke.jpg', 'https://www.youtube.com/embed/xgheDznGY-c?si=h0hVLmwsMM9MlgTZ', 12),
(18, 'Weathering With You', 2019, 112, 'Un lycéen rencontre une fille capable de contrôler la météo.', 'Makoto Shinkai', 10, 'weathering_with_you.jpg', 'https://www.youtube.com/embed/E8qYl2_b6HI?si=F9ytz8-Ev2Ix_qIm', 10),
(19, 'Your Name', 2016, 107, 'Deux adolescents échangent leurs corps de manière mystérieuse.', 'Makoto Shinkai', 10, 'your_name.jpg', 'https://www.youtube.com/embed/AROOK45LXXg', 10),
(20, 'Josee, the Tiger and the Fish', 2020, 98, 'Une jeune femme en fauteuil roulant et un étudiant découvrent le monde ensemble.', 'Kotaro Tamura', 10, 'josee_tiger_fish.jpg', 'https://www.youtube.com/embed/2IxY2U4VMCc?si=s8Z7VbChLdbAAW1x', 10);

-- --------------------------------------------------------

--
-- Structure de la table `Profil`
--

CREATE TABLE `Profil` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `age_restriction` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `Profil`
--

INSERT INTO `Profil` (`id`, `name`, `avatar`, `age_restriction`) VALUES
(1, 'Enfant', 'https://doodleipsum.com/700x700/avatar-1', 10),
(2, 'Ado', 'https://doodleipsum.com/700x700/avatar-2', 15),
(3, 'Adulte', 'https://doodleipsum.com/700x700/avatar-3', 18);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Favorie`
--
ALTER TABLE `Favorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_profil` (`id_profil`),
  ADD KEY `id_movie` (`id_movie`);

--
-- Index pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Index pour la table `Profil`
--
ALTER TABLE `Profil`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `Favorie`
--
ALTER TABLE `Favorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Movie`
--
ALTER TABLE `Movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `Profil`
--
ALTER TABLE `Profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Favorie`
--
ALTER TABLE `Favorie`
  ADD CONSTRAINT `favorie_ibfk_1` FOREIGN KEY (`id_profil`) REFERENCES `Profil` (`id`),
  ADD CONSTRAINT `favorie_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `Movie` (`id`);

--
-- Contraintes pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `Category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
