-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db.3wa.io
-- Généré le : mar. 21 fév. 2023 à 10:31
-- Version du serveur :  5.7.33-0ubuntu0.18.04.1-log
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `johane_cup_of_tea`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `image` text NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`, `image`, `description`) VALUES
(1, 'Thé noir', '../img/tea/1.jpg', 'Le thé noir, que les chinois appellent thé rouge en référence à la couleur cuivrée de son infusion, est un thé complètement oxydé. La fabrication du thé noir se fait en cinq étapes : le flétrissage, le roulage, l\'oxydation, la torréfaction et le triage. Cette dernière opération permet de différencier les différents grades.'),
(2, 'Thé blanc', '../img/tea/4.jpg', 'Le thé blanc est une spécialité de la province chinoise du Fujian. De toutes les familles de thé, c\'est celle dont la feuille est la moins transformée par rapport à son état naturel. Non oxydé, le thé blanc ne subit que deux opérations : un flétrissage et une dessiccation. Il existe deux grands types de thés blancs : les Aiguilles d\'Argent et les Bai Mu Dan.'),
(4, 'Thé vert', '../img/tea/2.jpg', 'Réputé pour ses nombreuses vertus grâce à sa richesse en antioxydants, le thé vert désaltère, tonifie, apaise, fortifie, et procure une incontestable sensation de bien-être. Délicat et peu amer, il est apprécié à tout moment de la journée et propose une palette d\'arômes très variés : végétal, minéral, floral, fruité.'),
(5, 'Oolong', '../img/tea/3.jpg', 'Les Oolong, que les chinois appellent thés bleu-vert en référence à la couleur de leurs feuilles infusées, sont des thés semi-oxydés : leur oxydation n\'a pas été menée à son terme. Spécialités de Chine et de Taïwan, il en existe une grande variété, en fonction de la région de culture, de l\'espèce du théier ou encore du processus de fabrication.'),
(6, 'Rooibos', '../img/tea/5.jpg', 'Le Rooibos (appelé thé rouge bien qu\'il ne s\'agisse pas de thé) est une plante poussant uniquement en Afrique du Sud et qui ne contient pas du tout de théine. Son infusion donne une boisson très agréable, ronde et légèrement sucrée. Riche en antioxydants, faible en tanins et dénué de théine, le Rooibos peut être dégusté en journée comme en soirée.');

-- --------------------------------------------------------

--
-- Structure de la table `format`
--

CREATE TABLE `format` (
  `id` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `conditionnement` varchar(50) NOT NULL,
  `id_the` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `format`
--

INSERT INTO `format` (`id`, `prix`, `conditionnement`, `id_the`) VALUES
(1, 9, 'Pochette de 100gr', 1),
(2, 32, 'Pochette de 500gr', 1),
(3, 58, 'Pochette de 1kg', 1),
(4, 12, 'Pochette de 100gr', 2),
(5, 33, 'Pochette de 500gr', 2),
(6, 48, 'Pochette de 1kg', 2),
(7, 8, 'Pochette de 100gr', 3),
(8, 16, 'Pochette de 500gr', 3),
(9, 30, 'Pochette de 1kg', 3),
(10, 8, 'Pochette de 100gr', 4),
(11, 16, 'Pochette de 500gr', 4),
(12, 30, 'Pochette de 1kg', 4),
(13, 8, 'Pochette de 100gr', 5),
(14, 16, 'Pochette de 500gr', 5),
(15, 30, 'Pochette de 1kg', 5),
(16, 6, 'Pochette de 100gr', 6),
(17, 12, 'Pochette de 500gr', 6),
(18, 22, 'Pochette de 1kg', 6),
(19, 9, 'Pochette de 100gr', 7),
(20, 18, 'Pochette de 500gr', 7),
(21, 36, 'Pochette de 1kg', 7),
(22, 9, 'Pochette de 100gr', 8),
(23, 17, 'Pochette de 500gr', 8),
(24, 34, 'Pochette de 1kg', 8),
(25, 47, 'Pochette de 100gr', 9),
(26, 91, 'Pochette de 500gr', 9),
(27, 177, 'Pochette de 1kg', 9),
(28, 7, 'Pochette de 100gr', 10),
(29, 13, 'Pochette de 500gr', 10),
(30, 25, 'Pochette de 1kg', 10),
(31, 9, 'Pochette de 100gr', 11),
(32, 17, 'Pochette de 500gr', 11),
(33, 35, 'Pochette de 1kg', 11),
(34, 8, 'Pochette de 100gr', 12),
(35, 15, 'Pochette de 500gr', 12),
(36, 29, 'Pochette de 1kg', 12),
(37, 11, 'Pochette de 100gr', 13),
(38, 21, 'Pochette de 500gr', 13),
(39, 40, 'Pochette de 1kg', 13),
(40, 10, 'Pochette de 100gr', 14),
(41, 19, 'Pochette de 500gr', 14),
(42, 37, 'Pochette de 1kg', 14),
(43, 13, 'Pochette de 100gr', 15),
(44, 26, 'Pochette de 500gr', 15),
(45, 51, 'Pochette de 1kg', 15);

-- --------------------------------------------------------

--
-- Structure de la table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cond` varchar(150) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `order_id`, `product_id`, `cond`, `price`) VALUES
(1, 2, 5, 'Pochette de 100gr', 8),
(2, 3, 5, 'Pochette de 100gr', 8),
(3, 4, 4, 'Pochette de 100gr', 8),
(4, 4, 11, 'Pochette de 100gr', 9),
(5, 5, 11, 'Pochette de 100gr', 9),
(6, 5, 4, 'Pochette de 100gr', 8),
(7, 6, 4, 'Pochette de 100gr', 8),
(8, 6, 11, 'Pochette de 100gr', 9);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `date`, `statut`, `user_id`) VALUES
(1, '2023-02-19 18:43:19', '0', 2),
(2, '2023-02-19 18:34:53', '1', 2),
(3, '2023-02-19 18:33:43', '1', 2),
(4, '2023-02-19 18:43:23', '0', 2),
(5, '2023-02-19 18:43:28', '0', 2),
(6, '2023-02-19 18:43:32', '0', 2);

-- --------------------------------------------------------

--
-- Structure de la table `thes`
--

CREATE TABLE `thes` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `sous_titre` text NOT NULL,
  `ref` int(11) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` date DEFAULT NULL,
  `coup_de_coeur` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `thes`
--

INSERT INTO `thes` (`id`, `nom`, `sous_titre`, `ref`, `image`, `description`, `date`, `coup_de_coeur`, `id_category`) VALUES
(1, 'Blue of London\r\n', 'Une saveur de Bloody Sunday', 133742, '../img/product/product3_big.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2020-02-11', 0, 1),
(2, 'Thé des songes blanc', 'Voyagez à travers l\'Inde', 135887, '../img/product/product11_big.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2020-04-23', 1, 2),
(3, 'Thé des lords', 'Le thé royal', 133508, '../img/product/product6_big.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2021-12-13', 0, 1),
(4, 'Thé des vahinés', 'Thé fleuri', 133299, '../img/product/product7_big.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2019-06-07', 0, 1),
(5, 'Thé du hammam', '', 215480, '../img/product/product1_big.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit libero risus, eu tristique erat feugiat sit amet. Aliquam risus ante, mattis id euismod at, semper non orci.', '2020-10-02', 0, 4),
(6, 'Vive le thé !', '', 217370, '../img/product/product4_big.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit libero risus, eu tristique erat feugiat sit amet. Aliquam risus ante, mattis id euismod at, semper non orci.', '2021-07-19', 0, 4),
(7, 'Thé des alizés', '', 213990, '../img/product/product5_big.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit libero risus, eu tristique erat feugiat sit amet. Aliquam risus ante, mattis id euismod at, semper non orci.', '2022-05-07', 0, 4),
(8, 'Bai mu dan', '', 427432, '../img/product/product12_big.jpg\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit libero risus, eu tristique erat feugiat sit amet. Aliquam risus ante, mattis id euismod at, semper non orci.', '2018-02-05', 0, 2),
(9, 'Auguilles d\'argent', '', 420678, '../img/product/product13_big.jpg\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit libero risus, eu tristique erat feugiat sit amet. Aliquam risus ante, mattis id euismod at, semper non orci.', '2019-11-20', 0, 2),
(10, 'Rooibos à la verveine', '', 553490, '../img/product/product14_big.jpg\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit libero risus, eu tristique erat feugiat sit amet. Aliquam risus ante, mattis id euismod at, semper non orci.', '2021-03-01', 0, 6),
(11, 'Spicy Passion', 'Les saveurs des îles', 559215, '../img/product/product15_big.jpg\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit libero risus, eu tristique erat feugiat sit amet. Aliquam risus ante, mattis id euismod at, semper non orci.', '2023-01-10', 0, 6),
(12, 'Rooibos des amants', '', 558221, '../img/product/product16_big.jpg\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit libero risus, eu tristique erat feugiat sit amet. Aliquam risus ante, mattis id euismod at, semper non orci.', '2018-08-28', 0, 6),
(13, 'Vive les fêtes', '', 769554, '../img/product/product8_big.jpg\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit libero risus, eu tristique erat feugiat sit amet. Aliquam risus ante, mattis id euismod at, semper non orci.', '2021-11-08', 0, 5),
(14, 'Fleur d\'oranger Oolong', '', 762219, '../img/product/product9_big.jpg\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit libero risus, eu tristique erat feugiat sit amet. Aliquam risus ante, mattis id euismod at, semper non orci.', '2018-04-27', 0, 5),
(15, 'Oolong 7 agrumes', '', 768801, '../img/product/product10_big.jpg\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla blandit libero risus, eu tristique erat feugiat sit amet. Aliquam risus ante, mattis id euismod at, semper non orci.', '2018-04-30', 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `email`, `password`, `admin`) VALUES
(1, 'Durand', 'Julie', 'julie@hotmail.com', '$2b$10$ZwipKubXZUpAjpPPfETpQ.yiZtlJEn/DGjEAv.YFXxLNgv3ePSCA.', 0),
(2, 'Lilou', 'Agatha', 'agatha@gmail.com', '$2b$10$tn4Aaqg9SZjA3klDW.OmRehcZvUckXp2MMf7n2/5.FWWICyV46hcW', 0),
(3, 'N\'Guyen', 'Yamina', 'admin@gmail.com', '$2b$10$VnWchvqeryb.azHNe83JB.wldqP/dhEd23OIWdZZ2KZeJc5oFrWDy', 1),
(4, 'Germain', 'Pierre', 'pierre@hotmail.fr', '$2b$10$pXnfBX4NpoZ/dvISkcjIwO/VgPK1Q5cfAC.dHZuogoh2S/z4nSUR6', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `format`
--
ALTER TABLE `format`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_the` (`id_the`);

--
-- Index pour la table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `thes`
--
ALTER TABLE `thes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `format`
--
ALTER TABLE `format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `thes`
--
ALTER TABLE `thes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `format`
--
ALTER TABLE `format`
  ADD CONSTRAINT `format_ibfk_1` FOREIGN KEY (`id_the`) REFERENCES `thes` (`id`);

--
-- Contraintes pour la table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `thes` (`id`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `thes`
--
ALTER TABLE `thes`
  ADD CONSTRAINT `thes_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
