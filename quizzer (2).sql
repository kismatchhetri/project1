-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 10:32 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `usernames` varchar(255) NOT NULL,
  `passwords` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `usernames`, `passwords`, `phone`) VALUES
(1, 'kismatchhetri23@gmail.com', 'kismat', '0897728ef999a5727df25688ccac25ec73d7801e8de320143f93fa357b365890', '9866349989'),
(2, 'kismatchhetri24@gmail.com', 'abhimat', '846a280613dbc4ea7de5e250dcbb80d9c132ecbe2dafa1ea97038150cba36c17', '9866349989'),
(3, 'kismatchhetri23@gmail.com', 'rohit', 'aa1bc24d795255c914d362b8d2bddc0138380dafed8e3e0cef265d343b6e96c9', '9866349989'),
(4, 'kismatchhetri23@gmail.com', 'kismat', '9a45a872f85a81aed5e9621c0673ffd86db70e78c978c240aeaa344fefc0d0ae', '9866349989');

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, '4 years'),
(2, 1, 0, '1 years'),
(3, 1, 0, '5 years\r\n'),
(4, 1, 0, 'none'),
(35, 3, 1, 'Chess'),
(36, 3, 0, 'Golf'),
(37, 3, 0, 'Tennis'),
(38, 3, 0, 'Football'),
(39, 4, 0, 'Golf'),
(40, 4, 1, 'Tennis'),
(41, 4, 0, 'Chess'),
(42, 4, 0, 'Footabll'),
(43, 5, 0, 'Mark Spitz'),
(44, 5, 0, 'Larisa Latynina'),
(45, 5, 1, 'Michael Phelps'),
(46, 5, 0, 'Mary Kom'),
(47, 6, 0, 'Lawn Tennis'),
(48, 6, 0, 'Badminton'),
(49, 6, 0, 'Football'),
(50, 6, 1, 'Table Tennis'),
(51, 7, 1, 'Indonesia'),
(52, 7, 0, 'Bhutan'),
(53, 7, 0, 'Argentina'),
(54, 7, 0, 'Nepal'),
(55, 8, 1, 'Polo'),
(57, 8, 0, 'Football'),
(58, 8, 0, 'Basketball'),
(59, 9, 0, 'Football'),
(60, 9, 1, 'Boxing'),
(61, 9, 0, 'Volleyball'),
(62, 9, 0, 'Kabbadi'),
(63, 10, 1, 'Refree'),
(64, 10, 0, 'Umpire'),
(65, 10, 0, 'Spectator'),
(66, 10, 0, 'Goalkeeper'),
(67, 2, 0, 'Argentina'),
(68, 2, 1, 'Uruguay'),
(69, 2, 0, 'Nepal'),
(70, 2, 0, 'Brazil'),
(71, 8, 0, 'Tennis');

-- --------------------------------------------------------

--
-- Table structure for table `choices2`
--

CREATE TABLE `choices2` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choices2`
--

INSERT INTO `choices2` (`id`, `question_number`, `is_correct`, `text`) VALUES
(3, 1, 0, 'Africa'),
(4, 1, 0, 'Europe'),
(5, 1, 1, 'Asia'),
(6, 1, 0, 'Australia'),
(7, 2, 0, 'Tulsipur'),
(8, 2, 0, 'Pokhara'),
(9, 2, 0, 'Bhaktapur'),
(10, 2, 1, 'Kathmandu'),
(11, 3, 0, 'White'),
(12, 3, 0, 'Blue'),
(13, 3, 0, 'Red'),
(14, 3, 1, 'Yellow'),
(15, 4, 1, 'Triangle'),
(16, 4, 0, 'Rectangle'),
(17, 4, 0, 'Circle'),
(18, 4, 0, 'Square'),
(19, 5, 0, '29 June 2008'),
(20, 5, 0, '30 june 2008'),
(21, 5, 1, '28 May 2008'),
(22, 5, 0, '30 May 2008'),
(23, 6, 0, 'China'),
(24, 6, 0, 'India'),
(25, 6, 1, 'Thailand'),
(26, 6, 0, 'none'),
(27, 7, 0, 'Maithili'),
(28, 7, 0, 'English'),
(29, 7, 0, 'Hindi'),
(30, 7, 1, 'Nepali'),
(31, 8, 0, 'Bill Gates'),
(32, 8, 1, 'Jimmy Wales'),
(33, 8, 0, 'Jeff Bezos'),
(34, 8, 0, 'none of these'),
(35, 9, 1, 'Laika'),
(36, 9, 0, 'Dolly'),
(37, 9, 0, 'Neon'),
(38, 9, 0, 'Smarty'),
(39, 10, 0, 'Bird'),
(40, 10, 0, 'Lizard'),
(41, 10, 1, 'Primate'),
(42, 10, 0, 'Reptile');

-- --------------------------------------------------------

--
-- Table structure for table `choices3`
--

CREATE TABLE `choices3` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choices3`
--

INSERT INTO `choices3` (`id`, `question_number`, `is_correct`, `text`) VALUES
(3, 1, 0, 'Michele'),
(4, 1, 1, 'James A Goshing'),
(5, 1, 0, 'James'),
(6, 1, 0, 'Gosling'),
(7, 2, 1, 'Window Vista'),
(8, 2, 0, 'Window 7'),
(9, 2, 0, 'Window XP'),
(10, 2, 0, 'Pentagon'),
(11, 3, 1, 'Secondary'),
(12, 3, 0, 'Axillary'),
(13, 3, 0, 'Tertiary'),
(14, 3, 0, 'Primary'),
(15, 4, 0, 'Compiler'),
(16, 4, 0, 'Loader'),
(17, 4, 1, 'Operating System'),
(18, 4, 0, 'Assembler'),
(19, 5, 0, 'Spoof'),
(20, 5, 0, 'Sniffer script'),
(21, 5, 0, 'Spool'),
(22, 5, 1, 'Spam'),
(27, 7, 1, 'Arithmetic Logic Unit'),
(28, 7, 0, 'Array Logic Unit'),
(29, 7, 0, 'Application Logic Unit'),
(30, 7, 0, 'None of above'),
(31, 8, 1, 'Video Graphics Array'),
(32, 8, 0, 'Visual Graphics Array'),
(33, 8, 0, 'Volatile Graphics Array'),
(34, 8, 0, 'Video Graphics Adapter'),
(39, 10, 0, 'Jeff Bezos'),
(40, 10, 1, 'Charles Babbage'),
(41, 10, 0, 'Elon Musk'),
(42, 10, 0, 'Larry Page'),
(43, 6, 0, 'USB Flash drive'),
(44, 6, 0, 'Memory cards'),
(45, 6, 1, 'DRAM'),
(46, 6, 0, 'Hard disk'),
(47, 9, 0, 'Programs'),
(48, 9, 0, 'None of these'),
(49, 9, 0, 'Software'),
(50, 9, 1, 'Hardware');

-- --------------------------------------------------------

--
-- Table structure for table `choices4`
--

CREATE TABLE `choices4` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choices4`
--

INSERT INTO `choices4` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, '6'),
(2, 1, 1, '7'),
(3, 1, 0, '5'),
(4, 1, 0, '8'),
(5, 2, 0, 'Aldehyde'),
(6, 2, 0, 'Acetic acid'),
(7, 2, 1, 'Alcohol'),
(8, 2, 0, 'Ketone'),
(9, 3, 0, 'Diopter'),
(10, 3, 0, 'Second'),
(11, 3, 1, 'Hertz'),
(12, 3, 0, 'Meter'),
(13, 4, 0, 'Black'),
(14, 4, 0, 'Blue'),
(15, 4, 1, 'Red'),
(16, 4, 0, 'Orange'),
(17, 5, 1, 'Salivery'),
(18, 5, 0, 'Adrenal'),
(19, 5, 0, 'Pituitary'),
(20, 5, 0, 'Gonads'),
(21, 6, 0, 'Neutron'),
(22, 6, 1, 'Neuron'),
(23, 6, 0, 'Nephron'),
(24, 6, 0, 'Nucleon'),
(25, 7, 0, 'Neutron'),
(26, 7, 0, 'Neuron'),
(27, 7, 0, 'Nucleon'),
(28, 7, 1, 'Nephron'),
(29, 8, 0, 'Hertz'),
(30, 8, 0, 'Diopter'),
(31, 8, 0, 'Faraday'),
(32, 8, 1, 'Meter'),
(33, 9, 1, 'Yellow'),
(34, 9, 0, 'White'),
(35, 9, 0, 'Brown'),
(36, 9, 0, 'Blue'),
(37, 10, 0, 'Action-reaction'),
(38, 10, 0, 'Change in momentum'),
(39, 10, 1, 'Law of inertia.'),
(40, 10, 0, 'Constant momentum');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `text`) VALUES
(1, 'After how many Year’s FIFA World Cup is held?\r\n'),
(2, 'Which Country won the first FIFA World Cup?'),
(3, 'In which of the following sports/ games the term Interference is used?'),
(4, 'Double fault is associated with which game'),
(5, ' Who has the Highest Number of Gold Medals in Olympic History?'),
(6, '“Electra Gold Cup” is associated with which sports?'),
(7, 'Badminton is national game of which country?'),
(8, 'Ezra cup is associated with which sports?'),
(9, 'Which Sport is Performed by the Legend “Muhammad Ali”?'),
(10, 'What is the name of person which controls a football match?');

-- --------------------------------------------------------

--
-- Table structure for table `questions2`
--

CREATE TABLE `questions2` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions2`
--

INSERT INTO `questions2` (`question_number`, `text`) VALUES
(1, 'In which continent is Nepal located?'),
(2, 'Which is the capital city of Nepal?'),
(3, 'What color can\'t be seen on the country\'s flag?'),
(4, 'The flag of Nepal resembles a geometrical figure. Which is it?'),
(5, 'When was Nepal declared a republic?'),
(6, 'Which country does not border Nepal?'),
(7, 'Which language is native to most of the Nepal people?'),
(8, 'Who is the founder of Wikipedia?'),
(9, 'First living creature launched in to space was a dog named: ______________?'),
(10, 'What is a tarsier?');

-- --------------------------------------------------------

--
-- Table structure for table `questions3`
--

CREATE TABLE `questions3` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions3`
--

INSERT INTO `questions3` (`question_number`, `text`) VALUES
(1, 'Who invented java?'),
(2, 'Longhorn was the code name of?'),
(3, 'USB-type storage device is?'),
(4, 'A computer cannot \"boot\" if it does not have the _____'),
(5, 'Junk e-mail is also called ______'),
(6, 'Which is a Volatile Memory?'),
(7, 'ALU is____________?'),
(8, 'VGA is____________?'),
(9, 'Physical parts of computer or tangible parts of computer are called____'),
(10, 'Who is the father of computer?');

-- --------------------------------------------------------

--
-- Table structure for table `questions4`
--

CREATE TABLE `questions4` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions4`
--

INSERT INTO `questions4` (`question_number`, `text`) VALUES
(1, 'What is the PH of H2O?'),
(2, 'Which of the following compound is mainly used in hand sanitizer?'),
(3, 'What is the S.I unit of frequency?'),
(4, 'Acid turns blue litmus paper into which color?'),
(5, 'Which of the following gland is present in the human mouth?'),
(6, 'What is the basic unit of our neural system?'),
(7, 'What is the basic unit of our excretory system?'),
(8, 'What is the unit of wavelength?'),
(9, 'What is the color of AgBr?'),
(10, 'What is the other name of Newton\'s first law of motion?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choices2`
--
ALTER TABLE `choices2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choices3`
--
ALTER TABLE `choices3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choices4`
--
ALTER TABLE `choices4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `questions2`
--
ALTER TABLE `questions2`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `questions3`
--
ALTER TABLE `questions3`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `questions4`
--
ALTER TABLE `questions4`
  ADD PRIMARY KEY (`question_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `choices2`
--
ALTER TABLE `choices2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `choices3`
--
ALTER TABLE `choices3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `choices4`
--
ALTER TABLE `choices4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
