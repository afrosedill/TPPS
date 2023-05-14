-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 26, 2023 at 02:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(500) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `date`) VALUES
(4, 'admin@example.com', '123', '2023-04-26 01:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `blogid` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `blogid`, `date`) VALUES
(1, 'Jaden', 'Awesome thesis guys!!', 6, '2023-04-26 00:15:59'),
(6, 'Cliff', 'I have a relating thesis to this!', 5, '2022-07-05 01:00:14'),
(8, 'Ethredah', 'Good job posting great papers!', 7, '2022-07-14 21:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `names` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `names`, `email`, `message`, `date`) VALUES
(1, 'Ethredah', 'ethredah@gmail.com', 'Hello there TPPS team.', '2023-07-26 16:57:59'),
(2, 'Chao', 'chao@gmail.com', 'Hi there!!', '2022-07-19 16:57:59'),
(4, 'James Mlamba', 'jaymo@gmail.com', 'I am interested in a meeting.', '2022-07-12 01:38:22'),
(5, 'James Mlamba', 'ethredah@gmail.com', 'Hello, let\'s talk about more thesis papers!', '2022-06-08 19:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author` varchar(200) NOT NULL,
  `title` varchar(400) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author`, `title`, `content`, `date`) VALUES
(5, 'Ethredah', 'MENTAL HEALTH IS REAL', 'The nature of mental illness has been the subject of passionate discussion throughout history. In ancient Greece Plato,1,2 promoting a mentalist definition of mental illness, was the first to coin the term “mental health,” which was conceived as reason aided by temper and ruling over passion. At around the same time, Hippocrates,3 taking a more physicalist approach, defined different mental conditions as a variety of imbalances between different kinds of “humours.” Griesinger4,5 almost 2 centuries ago was the first to state that “mental illness is brain illness,” an expression that has provided a strong impetus to the more recent medical conception of mental illness. The substantial progress accomplished in genomics and brain imaging in the last few decades made biological psychiatry stronger than ever and contributed to the reification of mental disorders as illnesses of the brain. The almost exclusively biogenetic conceptual framework for understanding mental illness has acquired a hegemony that has influenced mental health practitioners while also influencing campaigns designed to improve public attitudes toward the mentally ill. As a result, the statement “mental illness is like any other illness” has become almost axiomatic and, therefore, by definition it embodies an accepted truth not in need of a proof.', '2018-07-27 15:28:31'),
(6, 'Derick', 'Analysis of Research in Programming Teaching Tools: An Initial Review', 'This paper describes preliminary results of research related to programming teaching tools. This study focuses on the key issues being highlighted in this research. Among the research questions of the study are: What are the important issues in programming teaching and learning research? What are the methods of the research? What kind of tools involved in programming teaching and learning? What is the level of programming involved? The study applies systematic review approach to 45 research papers derived from the ACM digital database, published between 2005 and 2011. The study found six issues related to programming teaching tools, and most of the issues concern on the techniques and methods used in teaching, learning and assessment. Regarding the level of programming involved, majority of the research focuses on introductory stage.', '2018-07-27 15:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `date`) VALUES
(3, 'ethredah@gmail.com', '2023-04-26 18:21:30'),
(4, 'james@hack3.io', '2022-07-05 18:21:30'),
(6, 'admin@pikash.sales', '2022-06-09 01:49:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogid` (`blogid`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
