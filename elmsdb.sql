-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 11 avr. 2024 à 12:10
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `elmsdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2023-08-31 11:42:58');

-- --------------------------------------------------------

--
-- Structure de la table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) DEFAULT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(4, 'ADMIN', 'Admin', 'ADMN01', '2023-09-01 11:35:50'),
(6, 'Master in Computer Application', 'MCA', '1', '2024-03-12 11:21:22'),
(7, 'Bachelor in Computer Application', 'BCA', '2', '2024-03-12 11:21:51');

-- --------------------------------------------------------

--
-- Structure de la table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `Password` varchar(180) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Dob` varchar(100) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Country` varchar(150) DEFAULT NULL,
  `Phonenumber` char(11) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(6, '201511214020', 'Mendrika', 'Sarobidy', 'smampionona@gmail.com', '50d8d46c14e71b5b025695473d6c8c21', '', '', 'Master in Computer Application', 'A/16 Rangamkutir B/H Kalus Villa', 'Vadodara', 'India', '7203939414', 1, '2024-03-12 11:22:56'),
(7, '180510101115', 'Tadiwa', 'Vhito', 'td@gmail.com', '91e5ebdbf8fdfbbf63dedc745449a5e4', 'Male', '', 'Bachelor in Computer Application', 'PU Campus, Albert Einstein 613', 'Vadodara', 'India', '7203939414', 1, '2024-03-12 11:27:14'),
(8, '210511213001', 'Mihanta', 'Andria', 'mimi@gmail.com', 'dde6ecd6406700aa000b213c843a3091', 'Female', '22 September, 1995', 'Master in Computer Application', 'Ananta Shublab', 'Tana', 'Madagascar', '0782087200', 1, '2024-03-17 18:44:18'),
(9, '220510101007', 'Sam', 'Banze', 'sam@gmail.com', '332532dcfaa1cbf61e2a266bd723612c', 'Male', '9 April, 1998', 'Bachelor in Computer Application', 'Panigate', 'Maputo', 'Mozambique', '7203939123', 1, '2024-03-17 18:46:52'),
(10, '192312123008', 'Mia', 'Domoina', 'mia@gmail.com', '5102ecd3d47f6561de70979017b87a80', 'Female', '27 February, 1999', 'Master in Computer Application', 'Marie Curry', 'Tana', 'Madagascar', '0682087201', 1, '2024-03-17 18:49:24'),
(11, '210514238023', 'Mahery', 'Rakotomalala', 'mahery@gmail.com', '469147ce7dec55db89d691892e513f71', '', '18 July, 1996', 'Bachelor in Computer Application', 'Dov Dek', 'Vadodara', 'India', '0732096874', 1, '2024-04-11 10:05:41');

-- --------------------------------------------------------

--
-- Structure de la table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) DEFAULT NULL,
  `ToDate` varchar(120) DEFAULT NULL,
  `FromDate` varchar(120) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `IsRead` int(1) DEFAULT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(11, 'Casual Leaves', '17/09/2023', '10/09/2023', 'I need leave to visit my home town. ', '2023-08-31 15:06:21', 'Approved', '2023-08-31 20:39:40 ', 1, 1, 1),
(12, 'Casual Leaves', '15/09/2023', '09/09/2023', 'Need casual leaves for some personal work.', '2023-09-01 11:42:40', 'Leave approved', '2023-09-01 17:13:20 ', 1, 1, 5),
(13, 'Administrative Leave', '20/03/2024', '18/03/2024', 'Renewal of VISA/FRRO', '2024-03-12 11:54:34', 'Please bring the notice from ISAC for the FRRO renewal', '2024-03-12 17:25:58 ', 1, 1, 7),
(14, 'Official Leave', '15/02/2024', '12/02/2024', 'Seminar in another state', '2024-03-17 18:50:57', 'Submit your report after you come back from the seminar', '2024-03-18 0:21:59 ', 1, 1, 10),
(15, 'Casual Leaves', '20/03/2024', '18/03/2024', 'Family visiting', '2024-03-17 18:53:28', 'There is a test that day so it would be advise to be present', '2024-03-18 0:26:14 ', 2, 1, 9),
(16, 'Administrative Leave', '08/01/2024', '01/01/2024', 'Renewal of my FRRO and also Visa', '2024-03-17 18:57:27', 'Take form from ISAC and drop it on the clerk\'s desk', '2024-03-18 0:28:04 ', 1, 1, 9),
(17, 'Sick Leaves', '07/02/2024', '02/02/2024', 'Have the flue so I have to go to the hospital that day. The doctor told me to rest for 5 days', '2024-03-17 19:00:48', 'Drop the certificate from the doctor on my desk on the day you come back!', '2024-03-18 0:31:39 ', 1, 1, 8),
(18, 'Casual Leaves', '29/02/2024', '29/02/2024', 'Personal leave', '2024-03-17 19:02:33', 'You have already exceed your amount of casual leave', '2024-03-18 0:33:11 ', 2, 1, 8),
(19, 'Official Leave', '10/03/2024', '01/03/2024', 'I have to go to New Delhi to renew my passport number A24X253668', '2024-03-17 19:04:19', NULL, NULL, 0, 0, 8),
(20, 'Casual Leaves', '15/02/2024', '15/02/2024', 'Personal leave', '2024-03-17 19:05:41', NULL, NULL, 0, 0, 7),
(21, 'Sick Leaves', '16/04/2024', '15/04/2024', 'I have a surgery planned for that day', '2024-04-11 10:02:28', 'Submit the doctor notice and proof of your surgery to my desk on the day you return for class', '2024-04-11 15:33:51 ', 1, 1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leaves', 'Casual Leaves', '2023-08-31 14:52:22'),
(3, 'Sick Leaves', 'Sick Leaves', '2023-08-31 14:53:15'),
(5, 'Official Leave', 'All related leave to students having to do work related stuff off campus', '2024-03-12 11:38:41'),
(6, 'Administrative Leave', 'For foreign student who have to renew their Visa/FRRO', '2024-03-12 11:39:17');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Index pour la table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
